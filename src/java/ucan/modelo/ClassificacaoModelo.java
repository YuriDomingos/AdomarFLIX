/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

/**
 *
 * @author : Yuri Domingos
 * Data    : 02 - 01 - 2021
 * Objectivo : Construir o cenário
 */
public class ClassificacaoModelo 
{
    
    private int pk_ClassificaoModelo;
    private String descricacao;

    public ClassificacaoModelo() {
    }

    public ClassificacaoModelo(int pk_ClassificaoModelo, String descricacao) {
        this.pk_ClassificaoModelo = pk_ClassificaoModelo;
        this.descricacao = descricacao;
    }

    public int getPk_ClassificaoModelo() {
        return pk_ClassificaoModelo;
    }

    public void setPk_ClassificaoModelo(int pk_ClassificaoModelo) {
        this.pk_ClassificaoModelo = pk_ClassificaoModelo;
    }

    public String getDescricacao() {
        return descricacao;
    }

    public void setDescricacao(String descricacao) {
        this.descricacao = descricacao;
    }
    
    
    
}
