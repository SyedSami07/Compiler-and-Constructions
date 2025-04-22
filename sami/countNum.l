%{
    //A flex program that counts the number and word from a string 
    
    #include <stdio.h>
    int words = 0, numbers = 0;
%}

%%
[a-zA-Z]+ {words++; }
[0-9]+ {numbers++; }
\n { printf("words: %d, numbers: %d\n", words, numbers); }
%%


int yywrap() {return 1;}

int main() {
    yylex();
    return 0;
}