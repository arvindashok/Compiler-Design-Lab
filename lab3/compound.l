%{
#include<stdio.h>
int x=0;
%}
%%
[a-zA-Z].[?|.|!] {x=1;}
["\n"] {
if (x==1){printf("Ends with punctutation.\n");}
else{printf("No punctuation.\n");}
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
