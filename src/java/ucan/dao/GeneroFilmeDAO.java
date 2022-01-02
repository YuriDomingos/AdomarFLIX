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
import ucan.modelo.GeneroFilmeModelo;
import ucan.utils.Conexao;

/**
 *
 * @author Yuri Domingos
 */
public class GeneroFilmeDAO 
{
    
    
    
    public ArrayList<GeneroFilmeModelo> listarFilmes()
    {
        ArrayList<GeneroFilmeModelo> listaFilmes = new ArrayList<>();
        String query = "SELECT * FROM public.genero_filme ORDER BY descricao";
             
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while ( rs.next())
            {
                GeneroFilmeModelo generoFM = new GeneroFilmeModelo();
                
                generoFM.setPk_generoFilme(rs.getInt(1));
                generoFM.setDescricao(rs.getString(2));
                listaFilmes.add(generoFM);
            }
        }
        catch(SQLException ex)
        {
        
            System.out.println("Erro ao listar "+ex.toString());
        }
        
        return listaFilmes;
    }
    
    
    
}
