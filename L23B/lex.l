%{
#include <stdio.h>
#include <string.h>
%}

%%

1[01]+          { 
                    if (strstr(yytext, "00"))
                    {
                        printf("%s\n", yytext); 
                    }
                }

[ \t\n]+        { /* Nothing*/ }
[^01 \t\n]+     { /* Nothing*/ }

%%

int main() {
    yylex();
    return 0;
}

