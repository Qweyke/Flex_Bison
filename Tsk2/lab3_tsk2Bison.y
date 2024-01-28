%{
#include <stdio.h>

int yylex(void);
void yyerror();

%}

%token NUMBER
%token ADD SUB
%token EOL

%left ADD SUB

%%

calculation: 
    |calculation exp EOL {printf("=%d\n", $2);}
;

exp: NUMBER
    |exp ADD exp { $$ = $1 + $3; }
    |exp SUB exp { $$ = $1 - $3; }
;

%%

int main()
{
 yyparse();
}

void yyerror()
{
 printf("Error\n");
}