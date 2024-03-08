#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv){
	if(argc !=2){
		fprintf(stderr, "Number of argument should be 1");
	return 1;
	}
	
	printf(".intel_syntax noprefix\n");
	printf(".global main\n");
	printf("main:\n");
	printf("	mov rax, %d\n", atoi(argv[1]));
	printf("	ret\n");
	return 0;
}
//cc -o ccdolphin ccdolphin.c
//./ccdolphin 250 > tmp.s
//cc -o tmp tmp.s
//./tmp
//echo $?
