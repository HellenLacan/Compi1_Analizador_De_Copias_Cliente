/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ErroresLexicosSintacticos;

/**
 *
 * @author Hellen
 */
public class Token {
    
 
    private int fila;
    private int columna;
    public String lexema="";
    private String token="";
    
     public Token(){
       
    }
    
    public Token(String token, String lexema, int fila, int columna){
        this.fila=fila;
        this.columna=columna;
        this.token=token;
        this.lexema=lexema;
    }
    public int getFila() {
        return fila;
    }

    public void setFila(int fila) {
        this.fila = fila;
    }

    public int getColumna() {
        return columna;
    }

    public void setColumna(int columna) {
        this.columna = columna;
    }

    public String getLexema() {
        return lexema;
    }

    public void setLexema(String lexema) {
        this.lexema = lexema;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }
}

