%{
#include <stdio.h>

int yylex(void);
void yyerror();

%}

%token NUM
%token ADD SUB DIV MUL
%token EOL

%left ADD SUB
%left MUL DIV

%%

calculation: 
    |calculation exp EOL {printf("\n");}
;

exp: term
    |exp ADD exp { printf("+ "); }
    |exp SUB exp { printf("- "); }
    |exp MUL exp { printf ("* ");}
    |exp DIV exp { printf ("/ ");}
;
term: NUM {printf("%d ", $1);}
    |'(' exp ')' {$$ = $2;}
;

%%

int main(void)
{
    yyparse();
}
void yyerror()
{
    printf("Error");
}