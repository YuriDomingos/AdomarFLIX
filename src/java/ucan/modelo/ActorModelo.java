/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

/**
 *
 * @author Yuri Domingos
 * Data   : 31 - 12 - 2021
 * Objectivo : Construir o actor modelo 
 */
public class ActorModelo 
{
    private int pk_actor;
    private String Primeiro_nome, ultimo_nome;
    private String data_inicio;

    public ActorModelo() {
    }

    public ActorModelo(int pk_actor, String Primeiro_nome, String ultimo_nome, String data_inicio) {
        this.pk_actor = pk_actor;
        this.Primeiro_nome = Primeiro_nome;
        this.ultimo_nome = ultimo_nome;
        this.data_inicio = data_inicio;
    }

    public int getPk_actor() {
        return pk_actor;
    }

    public void setPk_actor(int pk_actor) {
        this.pk_actor = pk_actor;
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
