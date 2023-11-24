%{
#include<stdio.h>
char fname[25];
char *output = "output.txt";
%}
%%
int | char | float | void {fprintf(yyout,"\n %s is a datatype", yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {fprintf(yyout, "\n %s is an identifier",yytext);}
[0-9]* {fprintf(yyout,"\n %s is a digit",yytext);}
[" "]* {}
. {fprintf(yyout,"\n%s is an invalid token", yytext);}
%%
int yywrap()
{
}
int main()
{
printf("Enter file name:");
scanf("%s", fname);
yyin = fopen(fname, "r");
yyout = fopen (output, "w");
yylex();
fclose(yyin);
fclose(yyout);
return 0;
}
