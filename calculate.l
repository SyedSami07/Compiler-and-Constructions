%{
int result = 0, val = 0, first = 1;
char last;
%}

%%
[0-9]+ {
    val = atoi(yytext);
    if (first) { result = val; first = 0; }
    else if ( last == '*') result *= val;
    else if ( last == '/') result /= val;
}
[*\/] { last = yytext[0]; }
\n {
    printf("Result: %d\n", result);
    result = 0; first = 1;
}
end {return 0;}
%%

int yywrap() { return 1; }
int main()
{
    yylex();
    return 0;
}