%{
    //Write a Flex program that counts the number of words and numbers in a string. 
    //[Use "end" as the terminating command, and it will not be counted].
    #include <stdio.h>
    int c=0, n=0;
%}


alp [a-zA-Z]+
num [0-9]+

%%

"end" { return 0; } 
{alp} { c++; }
{num} { n++; }



%%

int yywrap(){return 1;}
int main()
{
    yylex(); 
    printf("word: %d\nNumber: %d", c, n);
    c=0, n=0;
    return 0;
}
