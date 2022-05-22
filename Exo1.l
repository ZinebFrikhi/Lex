%{
#include<stdio.h>
%}

%%
[A]+ {printf("%s Suite de caracteres de A \n", yytext);}

[ad]{2,} {printf("%s Suite de caracteres de ad \n", yytext);}

[A-Z][a-z][0-9]{3} {printf("%s Mot de longueur 3 \n", yytext);}

[']([a-zA-Z0-9 ]+[']{2}?[a-zA-Z0-9 ]+)*['] {printf("%s Pascale\n", yytext);}

["][A-Za-z0-9 ']+["] {printf("%s Chaine de caractere \n", yytext);}

[/]{2}[A-Za-z0-9]+ {printf("%s Commentaire type 1 \n", yytext);}

[/][*][A-Za-z0-9]+[*][/] {printf("%s Commentaire type 2 \n", yytext);}

[+*-/] {printf("%s c'est un operateur \n", yytext); }

. {printf("%s Autre Caractere\n", yytext);}

\n {return 0;}
%%
int yywrap(){}
int main(){
FILE *fp;
fp = fopen("Exo1.txt","r");
yyin = fp;
yylex();
return 0;
}