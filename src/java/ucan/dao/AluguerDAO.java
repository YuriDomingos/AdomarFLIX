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
 * Objectivo : Ver a lista do alufuer 
 */
public class AluguerDAO 
{

 
  public ArrayList<AluguerModelo > listarAluguerModelo()      
  {
      ArrayList<AluguerModelo> listaTmp = new ArrayList<>();
      
      
      String query1 = "SELECT a.pk_aluguer_filme, a.data_aluguer,a.data_devolucao, f.titulo_portugues, p.primeiro_nome, p.ultimo_nome from"
                       + " aluguer_filme a \n" +
                       "  inner join filme f ON (f.pk_filme = a.fk_filme) INNER join socio s ON (s.pk_socio = a.fk_socio)  INNER JOIN pessoa p\n" +
"	                  ON ( p.pk_pessoa = s.fk_pessoa);"; 
      
      try
      {
          Connection con = Conexao.abrirConexao();
          PreparedStatement ps = con.prepareStatement(query1);
          ResultSet rs = ps.executeQuery();
          
          while(rs.next())
          {
              AluguerModelo listaAluguer = new AluguerModelo();
              listaAluguer.setPk_AluguerFilme(rs.getInt(1));
              listaAluguer.setData_aluguer(rs.getDate(2));
              listaAluguer.setData_devolucao(rs.getDate(3));
              listaAluguer.setTitulo_portugues(rs.getString(4));
              listaAluguer.setPrimeiro_nome(rs.getString(5));
              listaAluguer.setUltimo_nome(rs.getString(6));
              
              listaTmp.add(listaAluguer);
          }
          
          
      }
      catch(SQLException ex)
      {
          System.out.println("Erro "+ex.toString());
      }
      
      return listaTmp;
      
  }
    
}
