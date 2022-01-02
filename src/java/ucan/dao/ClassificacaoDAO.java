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
import ucan.modelo.ClassificacaoModelo;
import ucan.utils.Conexao;

/**
 *
 * @author Yuri Domingos
 * Data   : 02 - 12 - 2021
 * Objectivo : Construir a classificacao DAO
 */
public class ClassificacaoDAO 
{

      public ArrayList<ClassificacaoModelo> listaClassificacao()
      {
          String query = "SELECT * FROM public.classificao_filme";
             ArrayList<ClassificacaoModelo> listaClassificao = new ArrayList<>();
          try
          {
              Connection con = Conexao.abrirConexao();
              PreparedStatement ps = con.prepareStatement(query);
              ResultSet rs = ps.executeQuery();
              
              while( rs.next())
              {
                  ClassificacaoModelo classificacao = new ClassificacaoModelo();
                  classificacao.setPk_ClassificaoModelo(rs.getInt(1));
                  classificacao.setDescricacao(rs.getString(2));
                  listaClassificao.add(classificacao);
              }
          }
          catch(SQLException ex)
          {
              System.out.println("Erro ao fazer a listagem");
          }
          
          return listaClassificao;
      }
}
