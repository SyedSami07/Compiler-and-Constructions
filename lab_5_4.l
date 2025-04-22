%{
    //flex program to identify strings that starts with '_' and ends with '_' and at 2 character and at most 4 character between them.
    // _.+{2,4}_ use cz jekunu character nibe  rage 2 theke 4
    //.+  cz whole string akta line a print korbe (valid/invalid)
%}


alp [a-zA-Z]


%%
_.+{2,4}_ {printf("Valid input: %s\n",yytext);}
end {return 0;}
.+ {printf("invalid input : %s\n",yytext);}
%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}
