%{

#include "lab3_tsk3B.tab.h"

%}

%%
[0-9]+ {yylval = atoi(yytext); return NUM;}
"+" {return ADD;}
"-" {return SUB;}
"/" {return DIV;}
"*" {return MUL;}
"(" {return *yytext;}                
")" {return *yytext;}
[ \t] {}
\n {return EOL;}
. {printf("UNKNOWN INPUT %s", yytext);}

%%