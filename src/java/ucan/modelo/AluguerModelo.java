/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

import java.sql.Date;

/**
 *
 * @author Yuri Domingos
 * Data   : 04-01-2022
 * Objectivo : Construir a classe de aluguer modelo
 * 
 */


public class AluguerModelo 
{
    private int pk_AluguerFilme,fk_filme,fk_socio;
    private Date data_aluguer, data_devolucao;
    private String titulo_portugues, primeiro_nome,ultimo_nome;

    public AluguerModelo() {
    }

    public AluguerModelo(int pk_AluguerFilme, int fk_filme, int fk_socio, Date data_aluguer, Date data_devolucao, String titulo_portugues, String primeiro_nome, String ultimo_nome) {
        this.pk_AluguerFilme = pk_AluguerFilme;
        this.fk_filme = fk_filme;
        this.fk_socio = fk_socio;
        this.data_aluguer = data_aluguer;
        this.data_devolucao = data_devolucao;
        this.titulo_portugues = titulo_portugues;
        this.primeiro_nome = primeiro_nome;
        this.ultimo_nome = ultimo_nome;
    }

    public int getPk_AluguerFilme() {
        return pk_AluguerFilme;
    }

    public void setPk_AluguerFilme(int pk_AluguerFilme) {
        this.pk_AluguerFilme = pk_AluguerFilme;
    }

    public int getFk_filme() {
        return fk_filme;
    }

    public void setFk_filme(int fk_filme) {
        this.fk_filme = fk_filme;
    }

    public int getFk_socio() {
        return fk_socio;
    }

    public void setFk_socio(int fk_socio) {
        this.fk_socio = fk_socio;
    }

    public Date getData_aluguer() {
        return data_aluguer;
    }

    public void setData_aluguer(Date data_aluguer) {
        this.data_aluguer = data_aluguer;
    }

    public Date getData_devolucao() {
        return data_devolucao;
    }

    public void setData_devolucao(Date data_devolucao) {
        this.data_devolucao = data_devolucao;
    }

    public String getTitulo_portugues() {
        return titulo_portugues;
    }

    public void setTitulo_portugues(String titulo_portugues) {
        this.titulo_portugues = titulo_portugues;
    }

    public String getPrimeiro_nome() {
        return primeiro_nome;
    }

    public void setPrimeiro_nome(String primeiro_nome) {
        this.primeiro_nome = primeiro_nome;
    }

    public String getUltimo_nome() {
        return ultimo_nome;
    }

    public void setUltimo_nome(String ultimo_nome) {
        this.ultimo_nome = ultimo_nome;
    }

  
    
}
