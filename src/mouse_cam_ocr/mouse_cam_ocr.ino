
void binarization_img(byte imgarray[][16]) { // imgWidth == 16

	//word min = 256;
	word avg = 0;
	//word max = 0;
	
	int i,j;

	for(i = 0; i < imgWidth; i++) {
		for(j = 0; j < imgWidth; j++) {
			byte pix = imgarray[i][j];
			avg += pix;// if (pix<min) {min = pix;} if (pix>max) { max = pix;}
			
		}
	}
	



	// fixme: need median filter?
	avg = avg/dumpWidth;
	for(i = 0; i < imgWidth; i++) {
		for(j = 0; j < imgWidth; j++) {
			if (imgarray[i][j]<avg) {
				bwimg[i][j]=0;
			}else{
				bwimg[i][j]=1;
			}
		}
	}
	




}

