/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

/**
 *
 * @author Yuri Domingos
 * Data   : 07 - 01 - 2021
 * Objectivo : referencia da comuna modelo 
 */
public class ComunaModelo
{
    private int pk_comuna, fk_municipio;
    private String descricao;

    public ComunaModelo() {
    }

    public ComunaModelo(int pk_comuna, int fk_municipio, String descricao) {
        this.pk_comuna = pk_comuna;
        this.fk_municipio = fk_municipio;
        this.descricao = descricao;
    }

    public int getPk_comuna() {
        return pk_comuna;
    }

    public void setPk_comuna(int pk_comuna) {
        this.pk_comuna = pk_comuna;
    }

    public int getFk_municipio() {
        return fk_municipio;
    }

    public void setFk_municipio(int fk_municipio) {
        this.fk_municipio = fk_municipio;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    
    
}
