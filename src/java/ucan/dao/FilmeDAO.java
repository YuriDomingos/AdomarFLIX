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
import java.text.ParseException;
import java.util.ArrayList;
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
    
    public static boolean cadastrarFilme(FilmeModelo filmeModelo) throws ParseException
    {
        
        String insert = "INSERT INTO public.filme VALUES (DEFAULT, ?, ?, ?, ?, ?, ?, ?,?);";
        
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
            ps.setString(7, filmeModelo.getDuracao());
            ps.setString(8, filmeModelo.getUrl_imagem());
            ps.execute();
            ps.close();
            
        }
        catch(SQLException ex)
        {
            System.out.println("Erro ao salvar o filme "+ex.toString());
        }
        
        return false;
    }
    
    public ArrayList<FilmeModelo> listarFilmes()
    {
        
        ArrayList<FilmeModelo> listaFilmes = new ArrayList<>();
        String query = " SELECT *FROM filme";
        
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {
                FilmeModelo filmeModelo = new FilmeModelo();
                filmeModelo.setUrl_imagem(rs.getString(8));
                listaFilmes.add(filmeModelo);
                
            }
        }
        catch(SQLException ex)
        {
            System.out.println(" Erro "+ex.toString());
        }
        
        return listaFilmes;
    }
    
}
