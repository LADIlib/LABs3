
NUMBER [+-]?((([1-9][0-9]*)|0)(\.[0-9]+)?([eE][-+]?([0-9]{2,}))?)

%%
{NUMBER} { printf("%s\n", yytext); }/*ECHO; putchar('\n');*/

[ \t\r\n]+	;
.          {}

%%

int main() {
    yylex();
    return 0;
}

