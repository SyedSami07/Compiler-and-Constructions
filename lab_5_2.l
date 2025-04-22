%{
    //flex program to identify strings that starts with 'p' and ends with 'q'.
    //so p{alp}*q jate start end p,q thake
%}


alp [a-zA-Z]


%%
p{alp}*q {printf("Valid input: %s\n",yytext);}
end {return 0;}
. {printf("invalid input : %s\n",yytext);}
%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}
