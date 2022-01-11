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
import ucan.modelo.RealizadorModelo;
import ucan.utils.Conexao;

/**
 *
 * @author : Yuri Domingos 
 * Data    : 01 - 01 - 2021
 * Objectivo : Construir o realizador DAO 
 */
public class RealizadorDAO {
    
    
    
    public static boolean cadastrarRealizador(int fk_pessoa)
    {
        String insert = "INSERT INTO public.realizador VALUES (DEFAULT,?);";
        
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(insert);
            
            ps.setInt(1, fk_pessoa);
            ps.execute();
            ps.close();
            
        }
        catch(SQLException ex)
        {
            System.out.println("Erro ao inserir os dados "+ex.toString());
        }
        
        return false;
    }
    
   
    
    
     public ArrayList<RealizadorModelo> listaRealizadoresComNome()
    {
         String query = "SELECT r.pk_realizador, p.primeiro_nome, p.ultimo_nome FROM pessoa p "
                                                                        + "INNER JOIN realizador r "
                                                                        + "ON ( r.fk_pessoa = p.pk_pessoa);";
         
         
        ArrayList<RealizadorModelo> listaRealizador = new ArrayList<>();
        
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while ( rs.next())
            {
                RealizadorModelo realizador = new RealizadorModelo();
                realizador.setPk_Realizador(rs.getInt(1));
                realizador.setPrimeiro_nome(rs.getString(2));
                realizador.setUltimo_nome(rs.getString(3));  
                realizador.setData_inico(rs.getString(4));
                listaRealizador.add(realizador);
            }
        }
        catch(SQLException ex)
        {
            System.out.println("Erro ao listar os realizadores "+ex.toString());
        }
        
        return listaRealizador;
    }
     
     
      public ArrayList<RealizadorModelo> listaRealizadores()
    {
        String query = "SELECT * FROM public.realizador";
        ArrayList<RealizadorModelo> listaRealizador = new ArrayList<>();
        
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while ( rs.next())
            {
                RealizadorModelo realizador = new RealizadorModelo();
                realizador.setPk_Realizador(rs.getInt(1));
                realizador.setFk_pessoa(rs.getInt(2));
                realizador.setData_inico(rs.getString(4));
                
                listaRealizador.add(realizador);
            }
        }
        catch(SQLException ex)
        {
            System.out.println("Erro ao listar os realizadores "+ex.toString());
        }
        
        return listaRealizador;
    }
    
}
    
   
   