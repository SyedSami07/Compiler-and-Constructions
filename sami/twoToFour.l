%{
    //A flex program to identify string which starts with '' end ''and 
    //at least 2 character and at most 4 character in between them

%}

%%
end {return 0;}

\"[a-zA-Z0-9]{2,4}\" {printf("valid input: %s\n", yytext);}
.+ {printf("invalid input: %s\n", yytext);}

%%


int yywrap() {return 1;}
int main(){
    yylex();
    return 0;
}