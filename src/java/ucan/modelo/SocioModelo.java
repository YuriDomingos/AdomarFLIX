/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

/**
 *
 * @author Yuri Domingos
 */
public class SocioModelo
{
    private int pk_socio;
    private String Primeiro_nome, ultimo_nome;
    private String data_inicio;

    public SocioModelo() {
    }

    public SocioModelo(int pk_socio, String Primeiro_nome, String ultimo_nome, String data_inicio) {
        this.pk_socio = pk_socio;
        this.Primeiro_nome = Primeiro_nome;
        this.ultimo_nome = ultimo_nome;
        this.data_inicio = data_inicio;
    }

    public int getPk_socio() {
        return pk_socio;
    }

    public void setPk_socio(int pk_socio) {
        this.pk_socio = pk_socio;
    }

    public String getPrimeiro_nome() {
        return Primeiro_nome;
    }

    public void setPrimeiro_nome(String Primeiro_nome) {
        this.Primeiro_nome = Primeiro_nome;
    }

    public String getUltimo_nome() {
        return ultimo_nome;
    }

    public void setUltimo_nome(String ultimo_nome) {
        this.ultimo_nome = ultimo_nome;
    }

    public String getData_inicio() {
        return data_inicio;
    }

    public void setData_inicio(String data_inicio) {
        this.data_inicio = data_inicio;
    }

    
    
}
