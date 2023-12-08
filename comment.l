%{
	#include<stdio.h>
	char fname[25];
	char *output = "output.txt";
	int count=0;
	int c=0;
%}
%%
^[//].[a-zA-Z0-9_]* {count++;}
^[/*] {c++;}
[a-zA-Z0-9_] {}
^[\*\/] {count=count+c;
	c=0;
	}
. {fprintf ("Count of comment lines is %d\n",count);}
%%
int yywrap(){}
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
