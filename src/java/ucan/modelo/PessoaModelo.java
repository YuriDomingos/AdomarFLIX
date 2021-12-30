/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.modelo;

import java.sql.Date;

/**
 *
 * @author Yuri Domingos 
 * Data   : 28 - 12 - 2021
 * Objectivo : Construir o ficheiro pessoa 
 */
public class PessoaModelo {
    
    private int pk_pessoa,fk_sexo,fk_estado_civil,fk_morada,telefone;
    private String Primeiro_nome, Ultimo_nome,numero_bi,email;
    private Date data_nasc;

    public PessoaModelo() {
    }

    public PessoaModelo(int pk_pessoa, int fk_sexo, int fk_estado_civil, int fk_morada, int telefone, String Primeiro_nome, String Ultimo_nome, String numero_bi, String email, Date data_nasc) {
        this.pk_pessoa = pk_pessoa;
        this.fk_sexo = fk_sexo;
        this.fk_estado_civil = fk_estado_civil;
        this.fk_morada = fk_morada;
        this.telefone = telefone;
        this.Primeiro_nome = Primeiro_nome;
        this.Ultimo_nome = Ultimo_nome;
        this.numero_bi = numero_bi;
        this.email = email;
        this.data_nasc = data_nasc;
    }

    public int getPk_pessoa() {
        return pk_pessoa;
    }

    public void setPk_pessoa(int pk_pessoa) {
        this.pk_pessoa = pk_pessoa;
    }

    public int getFk_sexo() {
        return fk_sexo;
    }

    public void setFk_sexo(int fk_sexo) {
        this.fk_sexo = fk_sexo;
    }

    public int getFk_estado_civil() {
        return fk_estado_civil;
    }

    public void setFk_estado_civil(int fk_estado_civil) {
        this.fk_estado_civil = fk_estado_civil;
    }

    public int getFk_morada() {
        return fk_morada;
    }

    public void setFk_morada(int fk_morada) {
        this.fk_morada = fk_morada;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public String getPrimeiro_nome() {
        return Primeiro_nome;
    }

    public void setPrimeiro_nome(String Primeiro_nome) {
        this.Primeiro_nome = Primeiro_nome;
    }

    public String getUltimo_nome() {
        return Ultimo_nome;
    }

    public void setUltimo_nome(String Ultimo_nome) {
        this.Ultimo_nome = Ultimo_nome;
    }

    public String getNumero_bi() {
        return numero_bi;
    }

    public void setNumero_bi(String numero_bi) {
        this.numero_bi = numero_bi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getData_nasc() {
        return data_nasc;
    }

    public void setData_nasc(Date data_nasc) {
        this.data_nasc = data_nasc;
    }

   
    
  
    
    
    
}
