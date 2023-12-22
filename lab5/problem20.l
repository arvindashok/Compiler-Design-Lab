%{
	#include<stdio.h>
	int count=0;
%}
%%
[0-9]*00 {printf("Ending 00");}
[0-9]*222[0-9]* {printf("3 consecutive 2s");}


[0-9]*1[0-9]{10} {printf("1 is 1th from right");}			
. {}
%%
int yywrap(){}
int main(){
	printf("enter input:");
	yylex();
	return 0;
}
