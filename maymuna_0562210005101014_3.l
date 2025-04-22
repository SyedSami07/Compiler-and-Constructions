%{
    // Write a Flex program that accepts any string with "pq" or "PQ" anywhere in the string. 
    //[Use "end" as the terminating command, and it will not be counted].
    //(pq|PQ) must thaka lagbe jekunu jaygay
    #include <stdio.h>
    
%}



%%

"end" { return 0; }
.*(pq|PQ).* {printf("Valid input: %s\n",yytext);}
.+ {printf("invalid input : %s\n",yytext);}


%%

int yywrap(){return 1;}
int main()
{
    yylex(); 
    return 0;
}
