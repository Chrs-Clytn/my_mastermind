#ifndef MY_MASTERMIND_H
#define MY_MASTERMIND_H

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>
#include <stdbool.h>

#define MAX_ARRAY_SIZE 128

int * random_number();
int complete_mastermind(char* guess, int* answer);
char * read_input();
int repeater(int tries, int* ans);
int my_strcmp(char* param_1, char* param_2);

#endif