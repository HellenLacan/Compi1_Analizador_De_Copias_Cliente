/****************************************  1ra Area: Codigo de Usuario *******************************************/
//------> Paquetes,importaciones
package Analizadores;
import java_cup.runtime.*;
import java.util.LinkedList;
import java.util.ArrayList;
import ErroresLexicosSintacticos.Token;


/*************************************  2da Area: Opciones y Declaraciones **************************************/
%%
%{
    //----> Codigo de usuario en sintaxis java
  ArrayList<Token> arrayTokens = new ArrayList<Token>();
    Token miToken;
%}

//-------> Directivas
%public 
%class Analizador_Lexico
%cupsym Simbolos
%cup
%char
%column
%full
%ignorecase
%line
%unicode

//------> Expresiones Regulares
numero = [0-9]+
id = [A-Za-zñÑ] ([_0-9A-Za-zñÑ]*|\_) | \_ ([_0-9A-Za-zñÑ]*|\_)*
decimal = [0-9]+ \. [0-9]+ | \. [0-9]+ 
cadena =  "\"" [^\"\n]* "\""   
caracter =  "\'" [A-Za-zñÑ] "\'"  | "\'" [_0-9A-Za-zñÑ] "\'"     
  
 
//------> Estas ER son para omitir comentarios, en este caso no se omitiran debido a que se necesita saber cuantos comentarios se repiten en un proyecto para la deteccion de copias.
ComentarioMultiLinea = "/*" [^*] ~"*/" | "/*" "*"+ "/" 
ComentarioLinea =  "/" "/" [^}\n]*    


//------> Estados

%%
/*************************************  3raa Area: Reglas Lexicas *******************************************************/

//-----> Simbolos

"RESULT"             { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.result, yycolumn, yyline, yytext()); }

/*"score"              { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.score, yycolumn, yyline, yytext()); }

"clases"             { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.clases, yycolumn, yyline, yytext()); }


"funciones"          { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.funciones, yycolumn, yyline, yytext()); }



"metodos"            { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.metodos, yycolumn, yyline, yytext()); }


"cantidad"           { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.cantidad, yycolumn, yyline, yytext()); }


"nombre"             { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.nombre, yycolumn, yyline, yytext()); }


"variables"          { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.variables, yycolumn, yyline, yytext()); }

*/
"html"               { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.html, yycolumn, yyline, yytext()); }

"</table>"            { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.ctable, yycolumn, yyline, yytext()); }


"head"               { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.head, yycolumn, yyline, yytext()); }

"body"               { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.body, yycolumn, yyline, yytext()); }

"title"              { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.title, yycolumn, yyline, yytext()); }

"h1"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.h1, yycolumn, yyline, yytext()); }

"h2"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.h2, yycolumn, yyline, yytext()); }

"h3"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.h3, yycolumn, yyline, yytext()); }

"h4"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.h4, yycolumn, yyline, yytext()); }

"h5"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.h5, yycolumn, yyline, yytext()); }

"h6"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.h6, yycolumn, yyline, yytext()); }

"table"              { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.table, yycolumn, yyline, yytext()); }

"<th>"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.tha, yycolumn, yyline, yytext()); }

"</th>"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.thc, yycolumn, yyline, yytext()); }

"</td>"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.tdc, yycolumn, yyline, yytext()); }



"th"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.th, yycolumn, yyline, yytext()); }
"td"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.td, yycolumn, yyline, yytext()); }


"<td>"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.tda, yycolumn, yyline, yytext()); }

"tr"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.tr, yycolumn, yyline, yytext()); }

"div"                { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.divhtml, yycolumn, yyline, yytext()); }

"p"                  { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.p, yycolumn, yyline, yytext()); }

"br"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.br, yycolumn, yyline, yytext()); }

"hr"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.hr, yycolumn, yyline, yytext()); }

"rojo"               { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.rojo, yycolumn, yyline, yytext()); }

"amarillo"           { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.amarillo, yycolumn, yyline, yytext()); }

"azul"               { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.azul, yycolumn, yyline, yytext()); }

"verde"              { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.verde, yycolumn, yyline, yytext()); }

"gris"               { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.gris, yycolumn, yyline, yytext()); }

"anaranjado"         { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.anaranjado, yycolumn, yyline, yytext()); }

"morado"             { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.morado, yycolumn, yyline, yytext()); }

"color"              { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.color, yycolumn, yyline, yytext()); }

"textcolor"          { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.textocolor, yycolumn, yyline, yytext()); }

"align"              { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.align, yycolumn, yyline, yytext()); }

"font"               { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.font, yycolumn, yyline, yytext()); }

"izquierda"          { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.izquierda, yycolumn, yyline, yytext()); }

"derecha"            { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.derecha, yycolumn, yyline, yytext()); }

"centrado"           { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.centrado, yycolumn, yyline, yytext()); }

"["                  { miToken = new Token("cora",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.cora, yycolumn, yyline, yytext()); }

"]"                  { miToken = new Token("corc",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.corc, yycolumn, yyline, yytext()); }


"<"                  { miToken = new Token("menor",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.menor, yycolumn, yyline, yytext()); }

"<="                 { miToken = new Token("menorQ",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.menorQ, yycolumn, yyline, yytext()); }

">="                 { miToken = new Token("mayorQ",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.mayorQ, yycolumn, yyline, yytext()); }

">"                  { miToken = new Token("myor",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.mayor, yycolumn, yyline, yytext()); }

"=="                 { miToken = new Token("igual",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.igual, yycolumn, yyline, yytext()); }

"!="                 { miToken = new Token("distinto",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" ptoYcoma"); return new Symbol(Simbolos.distinto, yycolumn, yyline, yytext()); }

"="                  { miToken = new Token("asignacion",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.asignacion, yycolumn, yyline, yytext()); }

"."                 { miToken = new Token("pto",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.pto, yycolumn, yyline, yytext()); }


"int"                { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.intt, yycolumn, yyline, yytext()); }

"boolean"            { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.booleann, yycolumn, yyline, yytext()); }

"String"             { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.stringg, yycolumn, yyline, yytext()); }

"char"               { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.charr, yycolumn, yyline, yytext()); }

"double"             { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.doublee, yycolumn, yyline, yytext()); }
                       
"float"              { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.floaat, yycolumn, yyline, yytext()); }

"true"               { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.truee, yycolumn, yyline, yytext()); }

"false"              { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.falsee, yycolumn, yyline, yytext()); }

"+"                  { miToken = new Token("mas",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.mas, yycolumn, yyline, yytext()); }

"-"                  { miToken = new Token("menos",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.menos, yycolumn, yyline, yytext()); }

"*"                  { miToken = new Token("por",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.por, yycolumn, yyline, yytext()); }

"/"                  { miToken = new Token("div",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.div, yycolumn, yyline, yytext()); }

"%"                  { miToken = new Token("mod",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.mod, yycolumn, yyline, yytext()); }

"("                  { miToken = new Token("para",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" para"); return new Symbol(Simbolos.para, yycolumn, yyline, yytext()); }

")"                  { miToken = new Token("parc",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" parc"); return new Symbol(Simbolos.parc, yycolumn, yyline, yytext()); }

";"                  { miToken = new Token("ptoYcoma",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" ptoYcoma"); return new Symbol(Simbolos.ptoYcoma, yycolumn, yyline, yytext()); }

","                  { miToken = new Token("coma",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" coma"); return new Symbol(Simbolos.coma, yycolumn, yyline, yytext()); }

"\""                 { miToken = new Token("Comilla",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.comilla, yycolumn, yyline, yytext()); }

"\”"                 { miToken = new Token("Comilla",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.comilla1, yycolumn, yyline, yytext()); }

"AND"                { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.and, yycolumn, yyline, yytext()); }

"OR"                 { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.or, yycolumn, yyline, yytext()); }

"NOT"                { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.not, yycolumn, yyline, yytext()); }

"++"                 { miToken = new Token("masMas",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.masmas, yycolumn, yyline, yytext()); }

"--"                 { miToken = new Token("menosMenos",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.menosmenos, yycolumn, yyline, yytext()); }

"+="                 { miToken = new Token("decreMas",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" plusplus"); return new Symbol(Simbolos.asignmas, yycolumn, yyline, yytext()); }

"-="                 { miToken = new Token("decrMenos",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.asignmenos, yycolumn, yyline, yytext()); }

"*="                 { miToken = new Token("incrPor",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.asignpor, yycolumn, yyline, yytext()); }

"Print"              { miToken = new Token("Reservada",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.print, yycolumn, yyline, yytext()); }

"Verdana"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.t1, yycolumn, yyline, yytext()); }
"Times New Roman"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.t2, yycolumn, yyline, yytext()); }
"Tw Cen MT"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.t3, yycolumn, yyline, yytext()); }
"Times"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.t4, yycolumn, yyline, yytext()); }
"Suiza"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.t5, yycolumn, yyline, yytext()); }
"Script"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.t6, yycolumn, yyline, yytext()); }
"Romana"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.t7, yycolumn, yyline, yytext()); }
"Modern"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.t8, yycolumn, yyline, yytext()); }
"Helvetica"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.t9, yycolumn, yyline, yytext()); }
"Georgia"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.t10, yycolumn, yyline, yytext()); }

"$"                  { miToken = new Token("Dolar",yytext(),yyline+1, yycolumn);
                       arrayTokens.add(miToken);
                       System.out.println("Reconocio "+yytext()+" Dolar"); return new Symbol(Simbolos.dolar, yycolumn, yyline, yytext()); }

//-------> Simbolos ER
 {numero}    { System.out.println("Reconocio "+yytext()+" num"); return new Symbol(Simbolos.num, yycolumn, yyline, yytext()); }
 {id}        { System.out.println("Reconocio "+yytext()+" id"); return new Symbol(Simbolos.id, yycolumn, yyline, yytext()); }
 {decimal}   { System.out.println("Reconocio "+yytext()+" decimal"); return new Symbol(Simbolos.decimal, yycolumn, yyline, yytext()); }
 {cadena}    { System.out.println("Reconocio "+yytext()+" cadena"); return new Symbol(Simbolos.cadena, yycolumn, yyline, yytext()); }
//{ComentarioLinea}            {  System.out.println("Reconocio "+yytext()+" coment"); return new Symbol(Simbolos.cadena, yycolumn, yyline, yytext());}
 {caracter}    { System.out.println("Reconocio "+yytext()+" cadena"); return new Symbol(Simbolos.caracter, yycolumn, yyline, yytext()); }


//------> Espacios
[ \t\r\n\f]                  {/* Espacios en blanco, se ignoran */}
//{ComentarioMultiLinea}       { /* ignorar */ }

//------> Errores Lexicos
.                       { System.out.println("Error Lexico"+yytext()+" Linea "+yyline+" Columna "+yycolumn);}
