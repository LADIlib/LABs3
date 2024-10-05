%{
#include <stdio.h>
#include <string.h>

char is_not_decreasing(const char* num) {
    for (int i = 1; num[i] != '\0'; ++i) {
        if (num[i] < num[i - 1]) {
            return 0;
        }
    }
    return 1;
}
%}

%%

[0-9]+        { 
                if (is_not_decreasing(yytext)) {
                    printf("%s\n", yytext);
                }
             }

[ \t\n]+      { /* Nothing */ }

%%

int main() {
    yylex();
    return 0;
}

