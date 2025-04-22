%{
    // Write a Flex program that accepts any string that has '^' at the beginning and end, and in between those '^', 
    //the string should be 2-part and separated by a '-'. 
    //[Use "end" as the terminating command, and it will not be counted].
    //^.*(-).*^ middle a - must.
    //.* means jekunu char including special

    #include <stdio.h>
    
%}



%%

end { return 0; }
^.*(-).*^ {printf("Valid input: %s\n",yytext);}
.+ {printf("invalid input : %s\n",yytext);}


%%

int yywrap(){return 1;}
int main()
{
    yylex(); 
    return 0;
}
