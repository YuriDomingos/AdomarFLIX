/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

/**
 *
 * @author   : Yuri Domingos
 * Data      : 02 - 12 - 2021
 * Objectivo : azer o modelo do filme 
 */
public class GeneroFilmeModelo 
{
    
    private int pk_generoFilme;
    private String descricao;

    public GeneroFilmeModelo() {
    }

    public GeneroFilmeModelo(int pk_generoFilme, String descricao) {
        this.pk_generoFilme = pk_generoFilme;
        this.descricao = descricao;
    }

    public int getPk_generoFilme() {
        return pk_generoFilme;
    }

    public void setPk_generoFilme(int pk_generoFilme) {
        this.pk_generoFilme = pk_generoFilme;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    
    
}
