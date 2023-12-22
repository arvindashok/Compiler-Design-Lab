%{
	#include<stdio.h>
%}
%%
[?|.|!] {printf("Punctutation");}
[+|-|*|/|^|%] {printf ("Operator");}
int|char|float|while|for|if|else|struct {printf("Keyword");}
[a-zA-Z0-9_]* {printf("Identifiers");}
. {}
%%
int yywrap(){}
int main(){
	printf("enter input:");
	yylex();
	return 0;
}
