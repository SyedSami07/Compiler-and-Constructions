%{
#include <stdio.h>
%}

LOCAL    [a-zA-Z0-9]+(_[a-zA-Z0-9]+)*
DOMAIN   [a-zA-Z]{3,5}
EXT      [a-zA-Z]{3}

%%

{LOCAL}@{DOMAIN}\.{EXT}     { printf("Valid Email.\n"); }
.+                             { printf("Invalid Email!\n"); }

%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}