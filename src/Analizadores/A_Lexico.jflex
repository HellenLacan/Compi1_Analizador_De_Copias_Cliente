/****************************************  1ra Area: Codigo de Usuario *******************************************/
//------> Paquetes,importaciones
package Analizadores;
import java_cup.runtime.*;
import java.util.LinkedList;
import java.util.ArrayList;


/*************************************  2da Area: Opciones y Declaraciones **************************************/
%%
%{
    //----> Codigo de usuario en sintaxis java

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
id = [A-Za-zñÑ] [_0-9A-Za-zñÑ]* 
decimal = [0-9]+ \. [0-9]+ | \. [0-9]+ 
cadena =  "\"" [^\"\n centrado izquierda derecha rojo amarillo azul verde gris anaranjado morado Verdana Times New Roman Tw Cen MT Suiza Script Romana Modern Helvetica Georgia]* "\""     
 
//------> Estas ER son para omitir comentarios, en este caso no se omitiran debido a que se necesita saber cuantos comentarios se repiten en un proyecto para la deteccion de copias.
ComentarioMultiLinea = "/*" [^*] ~"*/" | "/*" "*"+ "/" 
ComentarioLinea =  "/" "/" [^}\n]*    


//------> Estados

%%
/*************************************  3raa Area: Reglas Lexicas *******************************************************/

//-----> Simbolos

"html"               { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.html, yycolumn, yyline, yytext()); }
"head"               { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.head, yycolumn, yyline, yytext()); }
"body"               { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.body, yycolumn, yyline, yytext()); }
"title"              { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.title, yycolumn, yyline, yytext()); }

"h1"                 { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.h1, yycolumn, yyline, yytext()); }
"h2"                 { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.h2, yycolumn, yyline, yytext()); }
"h3"                 { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.h3, yycolumn, yyline, yytext()); }
"h4"                 { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.h4, yycolumn, yyline, yytext()); }
"h5"                 { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.h5, yycolumn, yyline, yytext()); }
"h6"                 { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.h6, yycolumn, yyline, yytext()); }

"table"              { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.table, yycolumn, yyline, yytext()); }
"th"                 { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.th, yycolumn, yyline, yytext()); }
"td"                 { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.td, yycolumn, yyline, yytext()); }
"tr"                 { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.tr, yycolumn, yyline, yytext()); }
"div"                { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.divhtml, yycolumn, yyline, yytext()); }

"p"                  { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.p, yycolumn, yyline, yytext()); }
"br"                 { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.br, yycolumn, yyline, yytext()); }
"hr"                 { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.hr, yycolumn, yyline, yytext()); }

"rojo"               { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.rojo, yycolumn, yyline, yytext()); }
"amarillo"           { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.amarillo, yycolumn, yyline, yytext()); }
"azul"               { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.azul, yycolumn, yyline, yytext()); }
"verde"              { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.verde, yycolumn, yyline, yytext()); }
"gris"               { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.gris, yycolumn, yyline, yytext()); }
"anaranjado"         { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.anaranjado, yycolumn, yyline, yytext()); }
"morado"             { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.morado, yycolumn, yyline, yytext()); }

"color"   { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.color, yycolumn, yyline, yytext()); }
"textcolor"    { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.textocolor, yycolumn, yyline, yytext()); }
"align" { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.align, yycolumn, yyline, yytext()); }
"font"     { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.font, yycolumn, yyline, yytext()); }

"izquierda"     { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.izquierda, yycolumn, yyline, yytext()); }
"derecha"     { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.derecha, yycolumn, yyline, yytext()); }
"centrado"     { System.out.println("Reconocio "+yytext()+" Reservada"); return new Symbol(Simbolos.centrado, yycolumn, yyline, yytext()); }

"<"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.menor, yycolumn, yyline, yytext()); }
"<="         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.menorQ, yycolumn, yyline, yytext()); }
">="         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.mayorQ, yycolumn, yyline, yytext()); }
">"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.mayor, yycolumn, yyline, yytext()); }
"=="         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.igual, yycolumn, yyline, yytext()); }
"!="         { System.out.println("Reconocio "+yytext()+" ptoYcoma"); return new Symbol(Simbolos.distinto, yycolumn, yyline, yytext()); }
"="         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.asignacion, yycolumn, yyline, yytext()); }

"int"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.intt, yycolumn, yyline, yytext()); }
"boolean"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.booleann, yycolumn, yyline, yytext()); }
"String"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.stringg, yycolumn, yyline, yytext()); }
"char"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.charr, yycolumn, yyline, yytext()); }
"double"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.doublee, yycolumn, yyline, yytext()); }

"true"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.truee, yycolumn, yyline, yytext()); }
"false"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.falsee, yycolumn, yyline, yytext()); }

"+"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.mas, yycolumn, yyline, yytext()); }
"-"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.menos, yycolumn, yyline, yytext()); }
"*"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.por, yycolumn, yyline, yytext()); }
"/"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.div, yycolumn, yyline, yytext()); }
"%"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.mod, yycolumn, yyline, yytext()); }
"("         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.para, yycolumn, yyline, yytext()); }
")"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.parc, yycolumn, yyline, yytext()); }

";"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.ptoYcoma, yycolumn, yyline, yytext()); }

"\""         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.comilla, yycolumn, yyline, yytext()); }
"\”"         { System.out.println("Reconocio "+yytext()+" dosPtos"); return new Symbol(Simbolos.comilla1, yycolumn, yyline, yytext()); }
"AND"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.and, yycolumn, yyline, yytext()); }
"OR"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.or, yycolumn, yyline, yytext()); }
"NOT"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.not, yycolumn, yyline, yytext()); }

"++"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.masmas, yycolumn, yyline, yytext()); }
"--"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.menosmenos, yycolumn, yyline, yytext()); }

"+="         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.asignmas, yycolumn, yyline, yytext()); }
"-="         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.asignmenos, yycolumn, yyline, yytext()); }
"*="         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.asignpor, yycolumn, yyline, yytext()); }

"Print"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.print, yycolumn, yyline, yytext()); }

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

"$"         { System.out.println("Reconocio "+yytext()+" pto"); return new Symbol(Simbolos.dolar, yycolumn, yyline, yytext()); }




//-------> Simbolos ER
 {numero}    { System.out.println("Reconocio "+yytext()+" num"); return new Symbol(Simbolos.num, yycolumn, yyline, yytext()); }
 {id}        { System.out.println("Reconocio "+yytext()+" id"); return new Symbol(Simbolos.id, yycolumn, yyline, yytext()); }
 {decimal}   { System.out.println("Reconocio "+yytext()+" decimal"); return new Symbol(Simbolos.decimal, yycolumn, yyline, yytext()); }
 {cadena}    { System.out.println("Reconocio "+yytext()+" cadena"); return new Symbol(Simbolos.cadena, yycolumn, yyline, yytext()); }
//{ComentarioLinea}            {  System.out.println("Reconocio "+yytext()+" coment"); return new Symbol(Simbolos.cadena, yycolumn, yyline, yytext());}

//------> Espacios
[ \t\r\n\f]                  {/* Espacios en blanco, se ignoran */}
//{ComentarioMultiLinea}       { /* ignorar */ }

//------> Errores Lexicos
.                       { System.out.println("Error Lexico"+yytext()+" Linea "+yyline+" Columna "+yycolumn);}
