%{
//A flex program that accepts any string with 'pq' or 'PQ'
//anywhere in the string

%}

%%
end {return 0;}

.*(pq|PQ).* {printf("Found: %s\n", yytext);}
.+ {printf("invalid input: %s\n", yytext);}
%%

int yywrap() {return 1;}
int main(){
    yylex();
    return 0;
}