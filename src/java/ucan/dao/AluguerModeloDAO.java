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
import ucan.modelo.AluguerModelo;
import ucan.utils.Conexao;

/**
 *
 * @author Yuri Domingos
 * Data   : 04 - 01 - 2022
 * Objectivo : 
 */
public class AluguerModeloDAO 
{

 
  public ArrayList<AluguerModelo > listarAluguerModelo()      
  {
      ArrayList<AluguerModelo> listaTmp = new ArrayList<>();
      String query = "SELECT \"pk_AluguerFilme\", data_aluguer, data_devolucao, fk_ffilme, fk_socio\n" + "FROM public.\"AluguerFilme\";";
      
      try
      {
          Connection con = Conexao.abrirConexao();
          PreparedStatement ps = con.prepareStatement(query);
          ResultSet rs = ps.executeQuery();
          
          while(rs.next())
          {
              AluguerModelo listaAluguer = new AluguerModelo();
              listaAluguer.setPk_AluguerFilme(rs.getInt(1));
          }
          
      }
      catch(SQLException ex)
      {
          System.out.println("Erro "+ex.toString());
      }
      
      return listaTmp;
      
  }
    
}
