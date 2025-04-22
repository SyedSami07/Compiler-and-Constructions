%{
//A flex program to identify smaller letter and capital letter from a string

#include <stdio.h>
#include <string.h>

%}

%%
[A-Z] {printf("Capital Letter: %s\n", yytext);}
[a-z] {printf("small Letter: %s\n", yytext);}
. { printf("invalid letter: %s\n", yytext);}
%%

int yywrap() {return 1;}

int main(){
    yylex();
    return 0;
}