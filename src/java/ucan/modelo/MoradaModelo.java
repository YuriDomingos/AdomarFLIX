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
 * Objectivo : Construir 
 */
public class MoradaModelo 
{
    private int pk_moradaModelo, fk_municipio;
    private String descricao;

    public MoradaModelo() {
    }

    public MoradaModelo(int pk_moradaModelo, int fk_municipio, String descricao) {
        this.pk_moradaModelo = pk_moradaModelo;
        this.fk_municipio = fk_municipio;
        this.descricao = descricao;
    }

    public int getPk_moradaModelo() {
        return pk_moradaModelo;
    }

    public void setPk_moradaModelo(int pk_moradaModelo) {
        this.pk_moradaModelo = pk_moradaModelo;
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

    public void setDescricao(String descricao) 
    {
        this.descricao = descricao;
    }
    
    
    
}
