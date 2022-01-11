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
import ucan.modelo.SocioCategoriaModelo;
import ucan.utils.Conexao;

/**
 *
 * @author Yuri Domingos 
 * Data    : 11 - 01 - 2022
 * Objectivo : Construir o dao 
 */
public class SocioCategoriaDAO 
{
    
    public ArrayList<SocioCategoriaModelo> listarCategoriaSocio()
    {
        ArrayList<SocioCategoriaModelo> lista_tmp = new ArrayList<>();
        String query = "";
        
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while ( rs.next())
            {
                SocioCategoriaModelo socioModelo = new SocioCategoriaModelo();
                socioModelo.setPk_socio_categoria(rs.getInt(1));
                socioModelo.setDescricao(rs.getString(2));
                lista_tmp.add(socioModelo);
                
                
            }
            
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return lista_tmp;
    }
    
}
