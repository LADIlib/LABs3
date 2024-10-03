%{
#include <stdio.h>
#include <ctype.h>
#include <string.h>
%}

%%

[a-zA-Z]+   {
                //const char* vowels = "aeiou";
                const char* vowels = "aeiouAEIOU";
                char prev_vowel = '\0';
                
                for (int i = 0; yytext[i] != '\0'; ++i) {
                    //if (strchr(vowels, tolower(yytext[i]))) {
                    if (strchr(vowels, yytext[i])) {
                        if (prev_vowel != '\0' && yytext[i] < prev_vowel) {
                            return;
                        }
                        prev_vowel = yytext[i];
                    }
                }

                printf("%s\n", yytext);
            }

[ \t\n]     { /* Nothing*/ }

%%

int main() {
    yylex();
    return 0;
}
