%{
    #include<stdio.h>
    //a flex program to identify smaller nd capital leter from a string//
%}

cap [A-Z]
sml [a-z]
num [0-9]

%%
{cap} {printf("Capital:%s\n",yytext);}
{sml} {printf("Smaller:%s\n",yytext);}
. {printf("invalid:%s\n",yytext);}
%%

int yywrap(){return 1;}
int main()
{
    yylex(); 
    return 0;
}