/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import static org.omg.CORBA.AnySeqHelper.insert;
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
            ps.setString(7, filmeModelo.getDuracao());
            ps.execute();
            ps.close();
            
        }
        catch(SQLException ex)
        {
            System.out.println("Erro ao salvar o filme "+ex.toString());
        }
        
        return false;
    }
    
}
