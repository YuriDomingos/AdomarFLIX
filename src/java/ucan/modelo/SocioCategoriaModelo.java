/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

/**
 *
 * @author : Yuri Domingos 
 * Data    : 11 - 01 - 2022
 * Objectivo : Construir o 
 */
public class SocioCategoriaModelo 
{
    private int pk_socio_categoria;
    private String descricao;

    public SocioCategoriaModelo() {
    }

    public SocioCategoriaModelo(int pk_socio_categoria, String descricao) {
        this.pk_socio_categoria = pk_socio_categoria;
        this.descricao = descricao;
    }

    public int getPk_socio_categoria() {
        return pk_socio_categoria;
    }

    public void setPk_socio_categoria(int pk_socio_categoria) {
        this.pk_socio_categoria = pk_socio_categoria;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    
    
}
