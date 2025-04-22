%{
%}

cap [A-Z]
sml [a-z]
num [0-9]

%%
{cap}|{sml} {printf("Alphabet\n");}
{num} {printf("Number\n");}
.+ {printf("invalid");}
%%

int yywrap(){return 1;}
int main()
{
    yylex(); 
    return 0;
}