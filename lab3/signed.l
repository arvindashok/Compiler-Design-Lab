%{
#include<stdio.h>
int flag=0;
%}
%%
^[-].[0-9_] {flag=1;}
["\n"] {
	if (flag == 1) {printf("It is a signed number.\n");}
	else {printf("It is not a signed number.\n");}
	flag=0;
}
. {}	
%%
int yywrap(){}	

int main(){
	printf("Enter input:");
	yylex();
	return 0;//bye
}
