/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

/**
 *
 * @author : Yuri Domingos
 * Data    : 01 - 01 - 202
 * Objectivo : Construir o realizador modelo 
 */
public class RealizadorModelo 
{
    
    private int pk_Realizador, fk_pessoa, fk_nacionalidade;
    private String data_inico, primeiro_nome, ultimo_nome;
    

    public RealizadorModelo() {
    }

    public RealizadorModelo(int pk_Realizador, int fk_pessoa, int fk_nacionalidade, String data_inico, String primeiro_nome, String ultimo_nome) {
        this.pk_Realizador = pk_Realizador;
        this.fk_pessoa = fk_pessoa;
        this.fk_nacionalidade = fk_nacionalidade;
        this.data_inico = data_inico;
        this.primeiro_nome = primeiro_nome;
        this.ultimo_nome = ultimo_nome;
    }

    public int getPk_Realizador() {
        return pk_Realizador;
    }

    public void setPk_Realizador(int pk_Realizador) {
        this.pk_Realizador = pk_Realizador;
    }

    public int getFk_pessoa() {
        return fk_pessoa;
    }

    public void setFk_pessoa(int fk_pessoa) {
        this.fk_pessoa = fk_pessoa;
    }

    public int getFk_nacionalidade() {
        return fk_nacionalidade;
    }

    public void setFk_nacionalidade(int fk_nacionalidade) {
        this.fk_nacionalidade = fk_nacionalidade;
    }

    public String getData_inico() {
        return data_inico;
    }

    public void setData_inico(String data_inico) {
        this.data_inico = data_inico;
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
