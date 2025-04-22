//A flex program to identify integer number or floating number

%{
%}

%%
[0-9]+\.[0-9]+    { printf("Floating number: %s\n", yytext); }
[0-9]+            { printf("Integer: %s\n", yytext); }
.|\n              { /* ignore */ }
%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}