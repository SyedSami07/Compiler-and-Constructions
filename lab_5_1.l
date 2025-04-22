%{

    // v=0,c=0,n=0  cz next line gula jate abr 0 theke count korte pare
    #include <stdio.h>
    int v=0, c=0, n=0;
%}

vowel [aeiouAEIOU]
alp [a-zA-Z]
num [0-9]

%%
{vowel} { v++; }
{alp} { c++; }
{num} { n++; }
\n { 
    printf("Vowels: %d\nConsonants: %d\nNumbers: %d\n", v, c, n);
    v = 0; c = 0; n = 0;  
}
%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}
