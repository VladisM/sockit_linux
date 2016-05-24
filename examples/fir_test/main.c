/*
 * main.c
 * 
 * Shor example of controling FIR filter in FPGA. 
 * 
 * This code is based on this example: 
 * https://zhehaomao.com/blog/fpga/2013/12/27/sockit-3.html
 * 
 * 
 * Author:  Vladislav Mlejnecký
 * Email:   st49545@student.upce.cz
 * Created: 16.05.2016
 * 
 * Copyright 2016 Vladislav <vladis@v-book>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 */

#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <string.h>

#define PAGE_SIZE 4096
#define LWHPS2FPGA_BRIDGE_BASE 0xff200000
#define FIR_OFFSET 0x30


volatile unsigned char *fir_register;
void *bridge_map;


int main(int argc, char *argv[]){
	
	off_t BASE = LWHPS2FPGA_BRIDGE_BASE;
	
	// open the memory device file
	int fd = open("/dev/mem", O_RDWR|O_SYNC);
	if (fd < 0) {
		perror("open");
		exit(EXIT_FAILURE);
	}
	
	// map the LWHPS2FPGA bridge into process memory
	bridge_map = mmap(NULL, PAGE_SIZE, PROT_WRITE, MAP_SHARED, fd, BASE);
	if (bridge_map == MAP_FAILED) {
		perror("mmap");
		close(fd);
		exit(EXIT_FAILURE);
	}
	
	// get the fir address
	fir_register = (unsigned char *) (bridge_map + FIR_OFFSET);
	
	printf("zadej cislo banky pro jeji aktivaci, Q pro ukonceni\n");
	char inputData;
	while(1){
		scanf("%c", &inputData);
		if(inputData == '1'){
			printf("prvni banka aktivni\n");
			*fir_register = 0x00;
		}
		else if (inputData == '2'){
			printf("druha banka aktivni\n");
			*fir_register = 0x01;
		}
		else if (inputData == '3'){
			printf("treti banka aktivni\n");
			*fir_register = 0x02;
		}
		else if (inputData == '4'){
			printf("ctvrta banka aktivni\n");
			*fir_register = 0x03;
		}
		else if (inputData == '5'){
			printf("pata banka aktivni\n");
			*fir_register = 0x04;
		}
		else if (inputData == '6'){
			printf("sesta banka aktivni\n");
			*fir_register = 0x05;
		}
		else if (inputData == '7'){
			printf("sedma banka aktivni\n");
			*fir_register = 0x06;
		}
		else if (inputData == '8'){
			printf("osma banka aktivni\n");
			*fir_register = 0x07;
		}
		else if(inputData == 'Q'){
			break;
		}
	}
	
	// clean mapped memory
	if (munmap(bridge_map, PAGE_SIZE) < 0) {
		perror("munmap");
		close(fd);
		exit(EXIT_FAILURE);
	}
	
	// normall exit
	close(fd);
	return EXIT_SUCCESS;
}
