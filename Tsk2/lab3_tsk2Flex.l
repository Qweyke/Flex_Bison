%{
#include "lab3_tsk2Bison.tab.h"  
%}

%%

[0-9] {(yylval = atoi(yytext)); return NUMBER;}
"+" {return ADD;}
"-" {return SUB;}
[ \t] {}
\n {return EOL;}
. {printf("UNKNW SYMB %s\n", yytext);}

%%