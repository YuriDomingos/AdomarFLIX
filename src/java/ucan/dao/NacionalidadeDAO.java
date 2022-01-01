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
import ucan.modelo.NacionalidadeModelo;
import ucan.utils.Conexao;

/**
 *
 * @author Yuri Domingos 
 * Data    : 01 - 01 - 20202
 * Objectivo : Construir a nacionalidade modelo 
 */
public class NacionalidadeDAO {
    
    
    public ArrayList<NacionalidadeModelo> listarNacionalidade()
    {
        
        ArrayList<NacionalidadeModelo> lista = new ArrayList<>();
        String query = "SELECT *FROM nacionalidade;";
        
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while( rs.next())
            {
                NacionalidadeModelo nacionalidadeM = new NacionalidadeModelo();
                nacionalidadeM.setPk_Nacionalidade(rs.getInt(1));
                nacionalidadeM.setDescricao(rs.getString(2));
                lista.add(nacionalidadeM);
            }
            
        }catch(SQLException ex)
        {
            System.out.println("ERRO "+ex.toString());
        }
        
        return lista;
        
    }
    
}
