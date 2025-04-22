%{
    #include <stdio.h>
    int v=0, c=0, n=0;
%}

vowel [aeiouAEIOU]
alp [a-zA-Z]
num [0-9]

%%
{vowel} { v++; }
{alp} { c++; }
{num}+ { n++; }
end { return 0; } 

%%

int yywrap(){return 1;}
int main()
{
    yylex(); 
    printf("Vowels = %d,\nConsonants: %d,\nNumbers: %d\n", v, c, n);
    return 0;
}
