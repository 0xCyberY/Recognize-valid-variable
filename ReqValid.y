%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyparse();
int yyerror();
%}
%token L D
%%
var : L E {printf("valid variable\n");return 0;}
E : E L;
| E D;
|;
%%
int main()
{
printf("Enter the variable:\n");
yyparse();
}
int yyerror()
{
printf("Invalid varible!!\n");
exit(0);
}

