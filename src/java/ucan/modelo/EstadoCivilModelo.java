/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

/**
 *
 * @author  : Yuri Domingos 
 * Data     : 28 - 12 - 2021
 * Objectivo : Construir o modelo do estado civil 
 */
public class EstadoCivilModelo {
    
    private int pk_estado_civil;
    private String descricao;

    public EstadoCivilModelo() {
    }

    public EstadoCivilModelo(int pk_estado_civil, String descricao) {
        this.pk_estado_civil = pk_estado_civil;
        this.descricao = descricao;
    }

    public int getPk_estado_civil() {
        return pk_estado_civil;
    }

    public void setPk_estado_civil(int pk_estado_civil) {
        this.pk_estado_civil = pk_estado_civil;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    
    
    
}
