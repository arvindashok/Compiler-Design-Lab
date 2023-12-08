%{
#include<stdio.h>
%}
%%
[0-9][.][0-9_]* {printf("Floating point");}
^[.][0-9_]* {printf("Floating point");}
. {printf("Not floating point");}
%%
int yywrap()
{
}
int main()
{
printf("Enter input:");
yylex();

return 0;
}
