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
import ucan.utils.Conexao;

/**
 *
 * @author Yuri Domingos 
 * Data   : 17 - 01 - 2022
 * Objectivo : Consulta Modelo e padrão 
 */
public class ConsultaPadraoModelo 
{
    
    public ArrayList<ConsultaPadraoModelo> listar_aluguer_por_socio( )
    {
        
       ArrayList<ConsultaPadraoModelo> lista_tmp = new ArrayList<>();
       
       String query = "  SELECT p.primeiro_nome, p.ultimo_nome, f.titulo_portugues, a.data_aluguer, c.descricao from aluguer_filme a \n" +
"                                          INNER JOIN filme f  ON ( f.pk_filme =  a.fk_filme)\n" +
"										  INNER JOIN socio s  ON ( s.pk_socio =  a.fk_socio) \n" +
"										  INNER JOIN pessoa p ON ( p.pk_pessoa = s.fk_pessoa)\n" +
"										  INNER JOIN classificao_filme c ON ( c.pk_classificacao = f.fk_classificacao )\n" +
"										  WHERE EXTRACT (year from (a.data_aluguer)) = '2022'";
       
       
       try
       {
           
           Connection con = Conexao.abrirConexao();
           PreparedStatement ps = con.prepareStatement(query);
           
           ResultSet rs = ps.executeQuery();
           
           while ( rs.next() )
           {
               ConsultaPadraoModelo consultaModelo = new ConsultaPadraoModelo();
              
           }
           
       }
       catch(SQLException ex)
       {
           System.out.println("Erro ao listar os alugueres ");
       }
       
       return lista_tmp;
        
    }
    
}
