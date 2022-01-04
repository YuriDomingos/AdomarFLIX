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
 * Data   : 04-01-2022
 * Objectivo : Construir a classe de aluguer modelo 
 */
public class AluguerModelo 
{
    private int pk_AluguerFilme,fk_ffilme,fk_socio;
    private Date data_aluguer,data_devolucao;

    public AluguerModelo() {
    }

    public AluguerModelo(int pk_AluguerFilme, int fk_ffilme, int fk_socio, Date data_aluguer, Date data_devolucao) {
        this.pk_AluguerFilme = pk_AluguerFilme;
        this.fk_ffilme = fk_ffilme;
        this.fk_socio = fk_socio;
        this.data_aluguer = data_aluguer;
        this.data_devolucao = data_devolucao;
    }

    public int getPk_AluguerFilme() {
        return pk_AluguerFilme;
    }

    public void setPk_AluguerFilme(int pk_AluguerFilme) {
        this.pk_AluguerFilme = pk_AluguerFilme;
    }

    public int getFk_ffilme() {
        return fk_ffilme;
    }

    public void setFk_ffilme(int fk_ffilme) {
        this.fk_ffilme = fk_ffilme;
    }

    public int getFk_socio() {
        return fk_socio;
    }

    public void setFk_socio(int fk_socio) {
        this.fk_socio = fk_socio;
    }

    public Date getData_aluguer() {
        return data_aluguer;
    }

    public void setData_aluguer(Date data_aluguer) {
        this.data_aluguer = data_aluguer;
    }

    public Date getData_devolucao() {
        return data_devolucao;
    }

    public void setData_devolucao(Date data_devolucao) {
        this.data_devolucao = data_devolucao;
    }
    
    
    
}
