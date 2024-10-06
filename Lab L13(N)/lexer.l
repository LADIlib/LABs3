%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}

NATURAL_NUM [1-9][0-9]+

%%

{NATURAL_NUM} {
    /*printf("len = %d\n", yyleng);*/
    int unique = 1;
    for (int i = 0; i < yyleng; i++) {
        if (yytext[i] >= '0' && yytext[i] <= '9') { 
            for (int j = i + 1; j < yyleng; j++) { 
                if (yytext[i] == yytext[j]) {
                    unique = 0;
                    break;
                }
            }
            if (unique == 0) break;
        }
    }

    if (unique == 1) {
        printf("%s\n", yytext);
    }
}

[ \t\n]+ ;
. ;

%%

int main() {
    yylex();
    return 0;
}

