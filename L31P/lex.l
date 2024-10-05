%{
#include <stdio.h>
%}

%%

0[0-7]+            { printf("8: %s\n", yytext);  }
[1-9][0-9]*        { printf("10: %s\n", yytext); }
0[xX][0-9a-fA-F]+  { printf("16: %s\n", yytext); }

[ \t\n]+           { /* Nothing */ }

.                  { /* Nothing */ }

%%

int main() {
    yylex();
    return 0;
}
