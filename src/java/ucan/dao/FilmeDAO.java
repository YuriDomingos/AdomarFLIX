/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import ucan.modelo.FilmeModelo;
import ucan.utils.Conexao;

/**
 *
 * @author : Yuri Domingos
 * Data    : 02 - 12 - 2022
 * Objectivo : Construir a classe do filme 
 */
public class FilmeDAO 
{
    
    public boolean cadastrarFilme(FilmeModelo filmeModelo)
    {
        String insert = "INSERT INTO public.filme VALUES (DEFAULT, ?, ?, ?, ?, ?, ?, ?);";
        
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(insert);
            ps.setString(1, filmeModelo.getTitulo_portugues());
            ps.setString(2, filmeModelo.getTitulo_original());
            ps.setString(3, filmeModelo.getSinopse());
            ps.setInt(4, filmeModelo.getFk_genero());
            ps.setInt(5, filmeModelo.getFk_classificacao());
            ps.setInt(6, filmeModelo.getFk_realizador());
            ps.setTimestamp(7, filmeModelo.getDuracao());
            
        }
        catch(SQLException ex)
        {
            
        }
        
        return false;
    }
    
}
