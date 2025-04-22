 //A flex program to identify string which starts with '' end ''and 
 //at least 2 character and at most 4 character in between them


%{
%}

%%
\"[a-zA-Z0-9]{2,4}\"     { printf("Valid (2-4 chars): %s\n", yytext); }
.+ { printf("Invalid Input\n"); }
.|\n                     { /* ignore */ }
%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}
