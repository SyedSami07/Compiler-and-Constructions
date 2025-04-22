%{
%}


%%

"+" { printf("Addition operator\n"); }
"-" { printf("Subtraction operator\n"); }
"*" { printf("Multiplication operator\n"); }
"/" { printf("Division operator\n"); }
.   { printf("Invalid Input\n"); }
\n  { /* Ignore newlines */ }



%%

int yywrap() {return 1;}

int main()
{
    yylex();
    return 0;
}