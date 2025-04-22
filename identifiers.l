%{
#include <stdio.h>
int kw=0, id=0, num=0;
%}

%%
"float"|"int"|"if"|"return"     { printf("Keyword: %s   \n", yytext); kw++; }
"sum"                           { printf("Identifier: %s\n", yytext); id++; }
"78"                            { printf("Number: %s\n", yytext); num++; }
[0-9]+                          { printf("Invalid Number: %s\n", yytext); }
[$]                             {
                                   printf("\nTermination symbol $ found.\n");
                                   printf("Total Keywords: %d\n", kw);
                                   printf("Total Valid Numbers: %d\n", num);
                                   printf("Total Identifiers: %d\n", id);
                                   exit(0);
                                }
[ \t\n=]+                       ; // skip whitespace and '='
.                               ; // ignore everything else
%%

int yywrap() { return 1; }

int main() { yylex(); return 0; }
