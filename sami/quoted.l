%{
    //A flex program to identify string which starts with '' end '' 
    //and at least one alphabet (uppercase/lowercase)

%}

%%
"end" {return 0;}
\"[a-zA-Z]+\"     { printf("Valid string: %s\n", yytext); }
.+  { printf("invalid string: %s\n", yytext); }
%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}
