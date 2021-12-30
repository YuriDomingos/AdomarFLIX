/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import ucan.modelo.MoradaModelo;
import ucan.utils.Conexao;

/**
 *
 * @author : Yuri Domingos
 * Data    : 28 - 12 - 2021
 * Objectivo : Construir 
 */
public class MoradaDAO {
    
    
    public ArrayList<MoradaModelo> listar_moradas ()
    {
        ArrayList<MoradaModelo> moradas = new ArrayList<>();
    String query = "SELECT * FROM public.morada";
    
    try
    {
       Connection con = Conexao.abrirConexao();
       PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();
        
        while ( rs.next())
        {
            MoradaModelo moradaModelo = new MoradaModelo();
            moradaModelo.setPk_moradaModelo(rs.getInt(1));
            moradaModelo.setDescricao(rs.getString(2));
            moradaModelo.setFk_municipio(rs.getInt(3));
            moradas.add(moradaModelo);
        }
    }
    catch(SQLException ex)
    {
        System.out.println(" Erro " +ex.toString());
    }
    
    return moradas;
    }
            
           
}
