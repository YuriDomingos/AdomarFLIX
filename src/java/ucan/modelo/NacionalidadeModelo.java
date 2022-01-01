/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

/**
 *
 * @author Yuri Domingos
 * Data   : 01 - 01 - 2022
 * Objectivo : Construir a nossa lista 
 */
public class NacionalidadeModelo {
    
    private int pk_Nacionalidade;
    private String descricao;

    public NacionalidadeModelo() {
    }

    public NacionalidadeModelo(int pk_Nacionalidade, String descricao) {
        this.pk_Nacionalidade = pk_Nacionalidade;
        this.descricao = descricao;
    }

    public int getPk_Nacionalidade() {
        return pk_Nacionalidade;
    }

    public void setPk_Nacionalidade(int pk_Nacionalidade) {
        this.pk_Nacionalidade = pk_Nacionalidade;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    
    
}
