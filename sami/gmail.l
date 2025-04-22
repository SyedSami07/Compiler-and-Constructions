%{
    
    
%}


%%
end { return 0;}
[a-z0-9_]{3,}@([a-z]{3,5})\.([a-z]{3}) { printf("valid mail\n"); }
.+ { printf("invalid"); }  

%%

int yywrap(){ return 1; }
int main()
{
    yylex();
    return 0;
}
