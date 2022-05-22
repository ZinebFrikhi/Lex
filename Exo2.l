%{
#include<stdio.h>
%}

%%
[0-9]+ {printf("%s Entier \n", yytext);}
[0-9]+[.]+[0-9]+ {printf("%s Reel \n", yytext);}
[A-Z][a-z0-9A-Z]+ {printf("%s ID   \n", yytext);}
\n {printf("%s Retour a la ligne \n", yytext);}
. {printf("%s Erreur \n", yytext);}
%%
int yywrap(){}
int main(){
FILE *fp;
fp = fopen("Exo2.txt","r");
yyin = fp;
yylex();
return 0;
}