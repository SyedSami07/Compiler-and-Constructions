%{
 // 1a 
    
%}

%%
end { return 0; }
_[a-z_]*[A-Z]{0,1}[a-z_]*_ {printf("valid\n");}
.+ { printf("invalid\n"); }

%%


int yywrap(){ return 1; }
int main()
{
    yylex();
    return 0;
}
