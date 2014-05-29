/*
  mouse_cam_lib.ino --- capture image from mouse camera ADNS2051

  Copyright (C) 2014 Roman V. Prikhodchenko



  Original author: http://www.bidouille.org/hack/mousecam <contact@bidouille.org>
  Author: Roman V. Prikhodchenko <chujoii@gmail.com>


  This file is part of mousecam.

    mousecam is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    mousecam is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with mousecam.  If not, see <http://www.gnu.org/licenses/>.



 Keywords: mouse cam



 Usage:


 History:
 


 Code:
*/


#define SCLK 2
#define SDIO 3
#define PD 4

#define REG_PRODUCT_ID 0x00
#define REG_REVISION_ID 0x01
#define REG_MOTION 0x02
#define REG_DELTA_X 0x03
#define REG_DELTA_Y 0x04
#define REG_SQUAL 0x05
#define REG_AVERAGE_PIXEL 0x06
#define REG_MAXIMUM_PIXEL 0x07
#define REG_CONFIG_BITS 0x0A
#define REG_DATA_OUT_LOWER 0x0C
#define REG_DATA_OUT_UPPER 0x0D
#define REG_SHUTTER_LOWER 0x0E
#define REG_SHUTTER_UPPER 0x0F
#define REG_FRAME_PERIOD_LOWER 0x10
#define REG_FRAME_PERIOD_UPPER 0x11

// Number of pixels to read for each frame.
#define dumpWidth 256



byte frame[dumpWidth];

//byte img[imgWidth][imgWidth];

//byte bwimg[imgWidth][imgWidth];

void mouse_cam_init() {
	reset();
	byte productId = readRegister(REG_PRODUCT_ID);
	byte revisionId = readRegister(REG_REVISION_ID);
	Serial.print("Found productId ");
	Serial.print(productId, HEX);
	Serial.print(", rev. ");
	Serial.print(revisionId, HEX);
	Serial.println(productId == 0x02 ? " OK." : " Unknown productID. Carry on.");

	byte config = readRegister(REG_CONFIG_BITS);
	config |= B00000001; // Don't sleep (LED always powered on).
	writeRegister(REG_CONFIG_BITS, config);
}


char get_dx(){
	readRegister(REG_MOTION); // Freezes DX and DY until they are read or MOTION is read again.
	return readRegister(REG_DELTA_X);
}

char get_dy(){
	readRegister(REG_MOTION); // Freezes DX and DY until they are read or MOTION is read again.
	return readRegister(REG_DELTA_Y);
}

void SerialPrintImg(byte imgarray[][16]) { // imgWidth == 16

	word min = 256;
	word avg = 0;
	word max = 0;

	int counterprint = 0;
	
	Serial.println("FRAME:");
	for(int i = 0; i < imgWidth; i++) {
		for(int j = 0; j < imgWidth; j++) {
			counterprint++;
			
			byte pix = imgarray[i][j];
			avg += pix; if (pix<min) {min = pix;} if (pix>max) { max = pix;}
			//if( pix < 0x10 ) {pix = 0x10;} // fixme ?
			//Serial.print(pix, HEX);
			Serial.write(pix);
		}
	}
	Serial.println();
	
	//Serial.print("counterprint=");Serial.println(counterprint);
	/*
	Serial.println("FRAME-hex:");
	for(int i = 0; i < dumpWidth; i++) {
		byte pix = frame[i];
		avg += pix; if (pix<min) {min = pix;} if (pix>max) { max = pix;}
		if( pix < 0x10 )
			Serial.print("0");
		Serial.print(pix, HEX);
		if (i%16 == 0) {Serial.println();}
	}
	Serial.println();
	*/
	Serial.print("MIN:");	Serial.println(min);
	Serial.print("AVG:");	Serial.println(avg/dumpWidth);
	Serial.print("MAX:");	Serial.println(max);
}


void get_img() {
	byte config = readRegister(REG_CONFIG_BITS);
	config |= B00001000; // PixDump
	writeRegister(REG_CONFIG_BITS, config);

	int x = 0;
	int y = 0;

	int counterall = 0;
	int countergood = 0;

	byte data;
	
	for (x=0; x<imgWidth; x++){
		for (y=0; y<imgWidth; y++){
			countergood++;
			do {
				data = readRegister(REG_DATA_OUT_LOWER);
				counterall++;
			} while ((data & 0x80) != 0 ); // Data is valid
			img[x][y] = data;
		}
	}
	//Serial.print("countergood=");Serial.print(countergood);	Serial.print("   counterall=");Serial.println(counterall);

	config = readRegister(REG_CONFIG_BITS);
	config &= B11110111;
	writeRegister(REG_CONFIG_BITS, config);
}



void reset() {
	pinMode(SCLK, OUTPUT);
	pinMode(SDIO, INPUT);
	pinMode(PD, OUTPUT);
	digitalWrite(SCLK, LOW);
	digitalWrite(PD, HIGH);
	delayMicroseconds(1);
	digitalWrite(PD, LOW);
}

byte readRegister(byte address) {
	pinMode (SDIO, OUTPUT);

	for (byte i=128; i >0 ; i >>= 1) {
		digitalWrite (SCLK, LOW);
		digitalWrite (SDIO, (address & i) != 0 ? HIGH : LOW);
		digitalWrite (SCLK, HIGH);
	}

	pinMode (SDIO, INPUT);

	delayMicroseconds(100); // tHOLD = 100us min.

	byte res = 0;
	for (byte i=128; i >0 ; i >>= 1) {
		digitalWrite (SCLK, LOW);
		digitalWrite (SCLK, HIGH);
		if( digitalRead (SDIO) == HIGH )
			res |= i;
	}

	return res;
}

void writeRegister(byte address, byte data) {
	address |= 0x80; // MSB indicates write mode.
	pinMode (SDIO, OUTPUT);

	for (byte i = 128; i > 0 ; i >>= 1) {
		digitalWrite (SCLK, LOW);
		digitalWrite (SDIO, (address & i) != 0 ? HIGH : LOW);
		digitalWrite (SCLK, HIGH);
	}

	for (byte i = 128; i > 0 ; i >>= 1) {
		digitalWrite (SCLK, LOW);
		digitalWrite (SDIO, (data & i) != 0 ? HIGH : LOW);
		digitalWrite (SCLK, HIGH);
	}

	delayMicroseconds(100); // tSWW, tSWR = 100us min.
}
