/*
 * main.c
 * 
 * Short and simple test of accessing a memory mapped peripherals from
 * linux. This code should blink with LEDs on the kit.
 * 
 * This code is based on this example: 
 * https://zhehaomao.com/blog/fpga/2013/12/27/sockit-3.html
 * 
 * 
 * Author:  Vladislav Mlejnecký
 * Email:   st49545@student.upce.cz
 * Created: 16.04.2016
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

#define PAGE_SIZE 4096
#define LWHPS2FPGA_BRIDGE_BASE 0xff200000
#define LED_OFFSET 0x10


volatile unsigned char *leds_register;
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
	
	// get the leds address
	leds_register = (unsigned char *) (bridge_map + LED_OFFSET);
	
	// blink with leds
	*leds_register = 0x00;
	sleep(1);
	*leds_register = 0x0A;
	sleep(1);
	*leds_register = 0x05;
	
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
