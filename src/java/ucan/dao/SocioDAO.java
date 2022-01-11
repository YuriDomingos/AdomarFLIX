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
import ucan.modelo.SocioModelo;
import ucan.utils.Conexao;

/**
 *
 * @author Yuri Domingos 
 * Data    : 30 -12 -2021
 * Objectivo : Listar todos os sócios da base de dados 
 * 
 */
public class SocioDAO
{
    
    
    
    public static boolean cadastrarSocio(int fk_pessoa, int fk_categoria_socio)
    {
      String inserir = "INSERT INTO socio VALUES (default,?,?)";
      
      try
      {
          Connection con = Conexao.abrirConexao();
          PreparedStatement ps = con.prepareStatement(inserir);
          ps.setInt(1, fk_pessoa);
          ps.setInt(2, fk_categoria_socio);
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
    
    public ArrayList<SocioModelo> listar_socio()
    {
        
        ArrayList<SocioModelo> lista_socios = new ArrayList<SocioModelo>();
        
        String query = "select p.pk_pessoa, p.primeiro_nome, p.ultimo_nome, date(s.data_inicio)"
                
                                           + " from pessoa p INNER JOIN socio s ON (p.pk_pessoa = s.fk_pessoa);";  
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while( rs.next())
            {
                SocioModelo socioModelo = new SocioModelo();
                
                socioModelo.setPk_socio(rs.getInt(1));
                socioModelo.setPrimeiro_nome(rs.getString(2));
                socioModelo.setUltimo_nome(rs.getString(3));
                socioModelo.setData_inicio(rs.getDate(4));
                socioModelo.setCategoria_desc(rs.getString(5));
                lista_socios.add(socioModelo);
            }
        }
        catch(SQLException ex)
        {
            System.out.println("Erro ao listar os socios ");
        }
        return lista_socios;
    }
    
}
