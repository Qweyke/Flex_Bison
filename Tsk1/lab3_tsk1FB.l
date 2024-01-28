%{
#include <stdio.h>
%}

%%
[0-9]+ {printf("NUMBER %s\n", yytext);}
[0-9]+(\.[0-9]+)? {printf("FLT NUMBER %s\n", yytext);}
[a-zA-Z] {printf("ALPHABET SYM %s\n", yytext);}
[a-zA-Z]+ {printf("WORD %s\n", yytext);}
"+" {printf("PLUS\n");}
"-" {printf("MINUS\n");}
"*" {printf("MULT\n");}
"=" {printf("EQUAL\n");}
"/" {printf("DIVIDE\n");}
[ \t] {}
\n {printf("NEW LINE\n");}
.   {printf("UNKNWN SYMB %s\n", yytext);}
%%

int main() 
{
    yylex();
    return 1;
}