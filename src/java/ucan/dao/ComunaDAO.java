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
import ucan.modelo.ComunaModelo;
import ucan.utils.Conexao;

/**
 *
 * @author Yuri DDomingos 
 * Data   : 07 - 01 - 2021
 * Objectivo
 */
public class ComunaDAO {
    
    
    public ArrayList<ComunaModelo> listarComunas()
    {
        ArrayList<ComunaModelo> comunas = new ArrayList<>();
        String query = "SELECT * FROM public.comuna";
        
        
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while ( rs.next())
            {
                ComunaModelo comuna = new ComunaModelo();
                comuna.setPk_comuna(rs.getInt(1));
                comuna.setDescricao(rs.getString(2));
                comuna.setFk_municipio(rs.getInt(3));
                comunas.add(comuna);
                
            }
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return comunas;
    }
    
}
