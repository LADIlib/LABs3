%{
#include <stdio.h>
#include <ctype.h>
#include <string.h>

void check_vowels_order(const char* word);
%}

%%

[a-zA-Z]+    { check_vowels_order(yytext); }

[ \t\n]      { /* Nothing*/ }

%%

void check_vowels_order(const char* word) {
    //const char* vowels = "aeiou";
    const char* vowels = "aeiouAEIOU";
    char prev_vowel = '\0';
    
    for (int i = 0; word[i] != '\0'; ++i) {
        //if (strchr(vowels, tolower(word[i]))) {
		if (strchr(vowels, word[i])) {
            if (prev_vowel != '\0' && word[i] < prev_vowel) {
                return;
            }
            prev_vowel = word[i];
        }
    }

    printf("%s\n", word);
}

int main() {
    yylex();
    return 0;
}
