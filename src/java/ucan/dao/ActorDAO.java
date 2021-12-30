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
import ucan.modelo.ActorModelo;
import ucan.modelo.SocioModelo;
import ucan.utils.Conexao;

/**
 *
 * @author Yuri Domingos
 * Data   : 31-12-2021
 * Objectivo : Construir a classe que implementará as regras de negócio do actor 
 */
public class ActorDAO 
{
     public static boolean cadastrarSocio(int fk_pessoa)
    {
      String inserir = "INSERT INTO actor VALUES (default,?)";
      
      try
      {
          Connection con = Conexao.abrirConexao();
          PreparedStatement ps = con.prepareStatement(inserir);
          ps.setInt(1, fk_pessoa);
          ps.execute();
          ps.close();
          return true;
      }
      catch(SQLException ex)
      {
          System.out.println("Erro ao cadastrar o socio "+ex.toString());
      }
      
      return false;
        
    }
    
    public ArrayList<ActorModelo> listar_Atores()
    {
        
        ArrayList<ActorModelo> lista_atores = new ArrayList<ActorModelo>();
        
        String query = "select a.pk_actor, p.primeiro_nome, p.ultimo_nome, date(a.data_inicio) from pessoa p "
                                                          + "INNER JOIN actor a ON (p.pk_pessoa = a.fk_pessoa);";  
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while( rs.next())
            {
                ActorModelo actorModelo = new ActorModelo();
                
                actorModelo.setPk_actor(rs.getInt(1));
                actorModelo.setPrimeiro_nome(rs.getString(2));
                actorModelo.setUltimo_nome(rs.getString(3));
                actorModelo.setData_inicio(rs.getString(4));            
                lista_atores.add(actorModelo);
            }
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return lista_atores;
    }
    
    
}
