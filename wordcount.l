%{
int chars = 0;
int words = 0;
int lines = 0;
%}

%%

[^ \t\n\r\f\v]+ { words++; chars += strlen(yytext); }
\n              {lines++;}

%%

int main(int argc, char **argv)
{
    yylex();
    printf("%d lines, %d words, %d non-whitespace characters\n", lines, words, chars);
}