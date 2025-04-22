%{
    //flex program to identify strings that starts with '_' and ends with '_' and at least one alphabet (upper/lower case).
    // at least one so  {alp}+ use hobe
    //.+  cz whole string akta line a print korbe (valid/invalid)
%}


alp [a-zA-Z]


%%
_{alp}+_ {printf("Valid input: %s\n",yytext);}
end {return 0;}
.+ {printf("invalid input : %s\n",yytext);}
%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}
