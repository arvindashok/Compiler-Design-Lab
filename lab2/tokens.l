%{
#include<stdio.h>

char fname[25];
%}
%%
int | char | float | void {printf("\n %s is a datatype", yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("\n %s is an identifier",yytext);}
. {printf("\n%s is an invalid token", yytext);}
%%
int yywrap()
{
}
int main()
{
printf("Enter file name:");
scanf("%s", fname);
yyin = fopen(fname, "r");
yylex();
fclose(yyin);
return 0;
}
