%{
#include<stdio.h>
%}

%%
([A-Za-z0-9]+[_]?[A-Za-z0-9])* {printf("%s Vrai \n", yytext);}
\n {printf("%s  \n", yytext);}
[_][a-zA-Z0-9]+ {printf("%s Faux \n", yytext);}
[a-zA-Z0-9]*[_] {printf("%s Faux \n", yytext);}
[a-zA-Z0-9]+[_]{2,}[a-zA-Z0-9]+ {printf("%s Faux \n", yytext);}
%%
int yywrap(){}
int main(){
FILE *fp;
fp = fopen("Exo3.txt","r");
yyin = fp;
yylex();
return 0;
}