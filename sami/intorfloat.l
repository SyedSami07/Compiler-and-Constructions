%{
    //7.A flex program to identify integer number or floating number


%}

%%
end {return 0;}

[0-9]+\.[0-9]+ {printf("floating number: %s\n", yytext);}
[0-9]+ {printf("integer number: %s\n", yytext);}
.+ {printf("invalid input: %s\n", yytext);}

%%

int yywrap() {return 1;}
int main()
{
    yylex();
    return 0;
}