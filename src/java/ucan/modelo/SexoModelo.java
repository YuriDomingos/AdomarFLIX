/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

/**
 *
 * @author Yuri Domingos
 * Data   : 28 - 12 - 2021
 * Objectivo : Construir o sexo modelo 
 */
public class SexoModelo {
    
    private int pk_sexo;
    private String descricao;

    public SexoModelo() {
    }

    public SexoModelo(int pk_sexo, String descricao) {
        this.pk_sexo = pk_sexo;
        this.descricao = descricao;
    }

    public int getPk_sexo() {
        return pk_sexo;
    }

    public void setPk_sexo(int pk_sexo) {
        this.pk_sexo = pk_sexo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    
    
}
