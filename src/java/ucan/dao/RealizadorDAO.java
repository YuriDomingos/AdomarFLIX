/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import ucan.modelo.RealizadorModelo;
import ucan.utils.Conexao;

/**
 *
 * @author : Yuri Domingos 
 * Data    : 01 - 01 - 2021
 * Objectivo : Construir o realizador DAO 
 */
public class RealizadorDAO {
    
    
    
    public static boolean cadastrarRealizador(RealizadorModelo realizadorModelo)
    {
        String insert = "INSERT INTO public.realizador VALUES (DEFAULT, ?, ?);";
        
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(insert);
            
            ps.setInt(1, realizadorModelo.getPk_Realizador());
            ps.setInt(2, realizadorModelo.getFk_nacionalidade());
            ps.execute();
            ps.close();
            
        }
        catch(SQLException ex)
        {
            System.out.println("Erro ao inserir os dados "+ex.toString());
        }
        
        return false;
    }
    
}
