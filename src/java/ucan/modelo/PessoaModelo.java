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
    
    private int pk_pessoa,fk_sexo,fk_estado_civil,fk_comuna,telefone, fk_nacionalidade;
    private String Primeiro_nome, Ultimo_nome,numero_bi,email, nacionalidade, estado_civil_desc, sexo_descricao, comuna_descr;
    private Date data_nasc;

    public PessoaModelo() {
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

    public int getFk_comuna() {
        return fk_comuna;
    }

    public void setFk_comuna(int fk_comuna) {
        this.fk_comuna = fk_comuna;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public int getFk_nacionalidade() {
        return fk_nacionalidade;
    }

    public void setFk_nacionalidade(int fk_nacionalidade) {
        this.fk_nacionalidade = fk_nacionalidade;
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

    public String getNacionalidade() {
        return nacionalidade;
    }

    public void setNacionalidade(String nacionalidade) {
        this.nacionalidade = nacionalidade;
    }

    public String getEstado_civil_desc() {
        return estado_civil_desc;
    }

    public void setEstado_civil_desc(String estado_civil_desc) {
        this.estado_civil_desc = estado_civil_desc;
    }

    public String getSexo_descricao() {
        return sexo_descricao;
    }

    public void setSexo_descricao(String sexo_descricao) {
        this.sexo_descricao = sexo_descricao;
    }

    public String getComuna_descr() {
        return comuna_descr;
    }

    public void setComuna_descr(String comuna_descr) {
        this.comuna_descr = comuna_descr;
    }

    public Date getData_nasc() {
        return data_nasc;
    }

    public void setData_nasc(Date data_nasc) {
        this.data_nasc = data_nasc;
    }

    
    
    
}
