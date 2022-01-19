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
 * Data   : 17 - 01 - 2022
 * Objectivo : Constru
 */
public class ConsultaPadraoModelo 
{
    
    private int pk_aluguer;
    private String descric_filme, primeiro_nome, ultimo_nome;
    private Date data_aluguer, data_devolucao;

    public ConsultaPadraoModelo() {
    }

    public ConsultaPadraoModelo(int pk_aluguer, String descric_filme, String primeiro_nome, String ultimo_nome, Date data_aluguer, Date data_devolucao) {
        this.pk_aluguer = pk_aluguer;
        this.descric_filme = descric_filme;
        this.primeiro_nome = primeiro_nome;
        this.ultimo_nome = ultimo_nome;
        this.data_aluguer = data_aluguer;
        this.data_devolucao = data_devolucao;
    }

    public int getPk_aluguer() {
        return pk_aluguer;
    }

    public void setPk_aluguer(int pk_aluguer) {
        this.pk_aluguer = pk_aluguer;
    }

    public String getDescric_filme() {
        return descric_filme;
    }

    public void setDescric_filme(String descric_filme) {
        this.descric_filme = descric_filme;
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
    
    
    
}
