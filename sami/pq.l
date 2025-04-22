%{
    //A flex program that starts with a 'p' and ends with a 'q'

    #include <stdio.h>   
%}


%%
end { return 0; }
p.*.*q { printf("valid input: %s\n", yytext);}
.+ {printf("invalid input: %s\n", yytext);}

%%

int yywrap(){return 1;}
int main()
{
    yylex(); 
    return 0;
}