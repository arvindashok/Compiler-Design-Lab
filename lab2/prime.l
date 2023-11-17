%{
#include<stdio.h>
#include<stdlib.h>

int i, c, temp;
%}
%%
[0-9]+ {
	c=atoi(yytext);
	if (c==1 || c==0)
	{
		printf ("\n%s is not prime", yytext);
	}
	else if (c==2)
	{
		printf ("\n%s is prime", yytext);
	}
	else{
		for(i=2; i<c; i++)
		{
			temp=c%i;
			if (temp==0)
			{
				printf("\n%s is not prime", yytext);
				break;
			}
		}
		if (temp!=0)
		{
			printf("\n%s is prime", yytext);
		}
	}
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
