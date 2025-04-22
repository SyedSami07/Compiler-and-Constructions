%{
%}




%%
hello { printf("Valid\n"); }
world { printf("Valid\n"); }
[a-zA-Z]+ { printf("Invalid\n"); }
\n { /* Ignore newlines */ }
%%

int yywrap() {return 1;}

int main()
{
    yylex();
    return 0;
}




