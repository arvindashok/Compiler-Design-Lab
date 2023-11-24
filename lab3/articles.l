%{
#include<stdio.h>
int x=0;
%}
%%
^[Tt][he].[" "] {x=1;}
^[Aa][" "] {x=1;}
^[Aa][n][" "] {x=1;}
["\n"] {
if (x==1) {printf("It starts with an artile.\n");}
else {printf("It doesn't start with an aritcle.\n");}
x=0;
}
. {}
%%
int yywrap()
{
}
int main()
{
printf("enter input:");
yylex();
return 0;
}
