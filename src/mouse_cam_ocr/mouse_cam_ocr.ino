/*
  mouse_cam_ocr.ino --- capture image from mouse camera ADNS2051

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




void binarization_img(byte imgarray[][16]) { // imgWidth == 16

	word min = 256;
	word avg = 0;
	word max = 0;
	
	int i,j;

	for(i = 0; i < imgWidth; i++) {
		for(j = 0; j < imgWidth; j++) {
			byte pix = imgarray[i][j];
			avg += pix; if (pix<min) {min = pix;} if (pix>max) { max = pix;}
			
		}
	}
	



	// fixme: need median filter?
	avg = avg/dumpWidth;


	for(i = 0; i < imgWidth; i++) {
		for(j = 0; j < imgWidth; j++) {
			if (imgarray[i][j]<avg) {
				bwimg[i][j]=1; // fixme 1 = white
			}else{
				bwimg[i][j]=0; // fixme 0 = black
			}
		}
	}
	
}


int inc_neighbours(byte imgarray[][16], int x, int y)
{
	int i,j;
	byte update = imgarray[x][y]+1;
	int update_counter = 0;


	for (i=x-1; i<=x+1; i++){
		for (j=y-1; j<=y+1; j++){
			if ( !(i==x && j==y) && 1==imgarray[i][j] && i>=0 && i<=imgWidth && j>=0 && j<=imgWidth) {
				
				imgarray[i][j] = update;
				update_counter++;
			}
		}
	}
	return update_counter;
}



int wave(byte imgarray[][16], int startx, int starty){
	int maxcounter = imgWidth*imgWidth - 1;
	int counter = 2;   // img contain 0 or 1 (black or "white")
	int i,j;
	int counter_changes = 0;
	
	// fixme if (imgarray[startx][starty]!=1) ...

	imgarray[startx][starty]=counter;
	
	do {
		counter_changes = 0;

		// fixme: need optimization
		int imin, imax, jmin, jmax;


		// need check
		imin = startx-counter +1; // +1 because counter start from 2
		imax = startx+counter -1; // -1 because counter start from 2
		jmin = starty-counter +1;
		jmax = starty+counter -1;
		if (imin<0) {imin = 0;}
		if (imin>imgWidth) {imin = imgWidth;}
		if (jmin<0) {jmin = 0;}
		if (jmin>imgWidth) {jmin = imgWidth;}
		
		for (i=imin; i<imax; i++){
			for (j=jmin; j<jmax; j++){
				if (imgarray[i][j] == counter){
					counter_changes += inc_neighbours(imgarray, i, j);
				}
			}
		}

		Serial.print("img[");Serial.print(i);Serial.print("][");Serial.print(j);Serial.print("]=");Serial.println(imgarray[i][j]);
		SerialPrintImg(bwimg);

		counter++;
		
		Serial.print("counter=");Serial.println(counter);

	} while ((counter < maxcounter) && (counter_changes>0));

	if (counter >= maxcounter) {Serial.println("exit because: counter > maxcounter");}
	if (counter_changes <= 0) {Serial.println("exit because: counter_changes == 0");}
	return counter;
}
