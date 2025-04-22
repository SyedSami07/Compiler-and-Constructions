%{
#include <stdio.h>

int a = 0, n = 0, s = 0;
%}

%%

exit        { return 1; }

[a-zA-Z]    { a++; }
[0-9]       { n++; }
[ \t\n]     { /* skip whitespace */ }
.           { s++; }

%%

int yywrap(void) {
    return 1;
}

int main(void) {
    yylex();
    printf("Alphabets: %d\nDigits: %d\nSymbols: %d\n", a, n, s);
    return 0;
}