%% 
([a-z_]+[A-Z][a-z_]*)|([a-z_]+_[a-z_]+)   printf("Found a match\n"); 
[a-z_]+                                   printf("Not matched\n"); 
[^ \t\n]+                                 printf("Not matched\n"); 

%% 
int yywrap() { 
    return 1; 
}

int main(void) { 
    yylex(); 
    return 0; 
}