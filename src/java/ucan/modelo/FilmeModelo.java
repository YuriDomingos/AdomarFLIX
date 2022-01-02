/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

/**
 *
 * @author Yuri Domingos 
 * Data   : 02 - 12 - 2022
 * Objectivo : A classe genérica para 
 */
public class FilmeModelo 
{
    private int pk_filme,fk_genero,fk_classificacao,fk_realizador;
    private String titulo_portugues,titulo_original,Sinopse,duracao;

    public FilmeModelo() {
    }

    public FilmeModelo(int pk_filme, int fk_genero, int fk_classificacao, int fk_realizador, String titulo_portugues, String titulo_original, String Sinopse, String duracao) {
        this.pk_filme = pk_filme;
        this.fk_genero = fk_genero;
        this.fk_classificacao = fk_classificacao;
        this.fk_realizador = fk_realizador;
        this.titulo_portugues = titulo_portugues;
        this.titulo_original = titulo_original;
        this.Sinopse = Sinopse;
        this.duracao = duracao;
    }

    public int getPk_filme() {
        return pk_filme;
    }

    public void setPk_filme(int pk_filme) {
        this.pk_filme = pk_filme;
    }

    public int getFk_genero() {
        return fk_genero;
    }

    public void setFk_genero(int fk_genero) {
        this.fk_genero = fk_genero;
    }

    public int getFk_classificacao() {
        return fk_classificacao;
    }

    public void setFk_classificacao(int fk_classificacao) {
        this.fk_classificacao = fk_classificacao;
    }

    public int getFk_realizador() {
        return fk_realizador;
    }

    public void setFk_realizador(int fk_realizador) {
        this.fk_realizador = fk_realizador;
    }

    public String getTitulo_portugues() {
        return titulo_portugues;
    }

    public void setTitulo_portugues(String titulo_portugues) {
        this.titulo_portugues = titulo_portugues;
    }

    public String getTitulo_original() {
        return titulo_original;
    }

    public void setTitulo_original(String titulo_original) {
        this.titulo_original = titulo_original;
    }

    public String getSinopse() {
        return Sinopse;
    }

    public void setSinopse(String Sinopse) {
        this.Sinopse = Sinopse;
    }

    public String getDuracao() {
        return duracao;
    }

    public void setDuracao(String duracao) {
        this.duracao = duracao;
    }
    
    
    
    
}
