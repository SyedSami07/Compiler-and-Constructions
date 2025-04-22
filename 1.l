%{
    #include <stdio.h>
    int word_count = 0, number_count = 0;
%}

%%

"end" { return 0; }           // Stop execution when "end" is entered
[a-zA-Z]+ { word_count++; }   // Count words
[0-9]+ { number_count++; }    // Count numbers
[ \t\n]+  { /* Ignore whitespace */ }
. { /* Ignore all other characters */ }

%%

int yywrap() { return 1; }

int main() {
    printf("Enter input (type 'end' to stop):\n");
    yylex();
    printf("Words: %d\nNumbers: %d\n", word_count, number_count);
    return 0;
}
