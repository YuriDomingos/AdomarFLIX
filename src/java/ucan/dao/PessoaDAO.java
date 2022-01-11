/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import ucan.modelo.PessoaModelo;
import ucan.utils.Conexao;

/**
 *
 * @author Yuri Domingos 
 * Data   :
 */
public class PessoaDAO {
    
    
    public boolean SalvarPessoa(PessoaModelo modelo)
    {
        
        String query_insert = "INSERT INTO public.pessoa VALUES (DEFAULT, ?, ?, ?, ?, ?, ?, ?, ?, ?,?);";
        
        try{
            
               Connection con = Conexao.abrirConexao();
               PreparedStatement ps = con.prepareStatement(query_insert);
               ps.setString(1, modelo.getPrimeiro_nome());
               ps.setString(2, modelo.getUltimo_nome());
               ps.setString(3, modelo.getNumero_bi());
               ps.setInt(4, modelo.getFk_sexo());
               ps.setInt(5, modelo.getFk_estado_civil());
               ps.setString(6, modelo.getEmail());
               ps.setInt(7, modelo.getTelefone());
               ps.setDate(8, modelo.getData_nasc());
               ps.setInt(9, modelo.getFk_nacionalidade());
               ps.setInt(10, modelo.getFk_comuna());
               ps.execute();
               System.out.println("Inserido com sucesso");
               ps.close();
               con.close();
        
               
        }
        catch(SQLException ex)
        {
           ex.printStackTrace();
        }
        return false;
    }
    
    public boolean EliminarPessoa(int id_pessoa)
    {
        return false;
    }
    
    public boolean ActualizarPessoa(PessoaModelo modelo)
    {
        return false;
    }
    
    public ArrayList<PessoaModelo> listar_pessoa()
    {
         ArrayList<PessoaModelo> lista = new ArrayList<PessoaModelo>();
         
         String query = "SELECT *FROM PESSOA";
        
        try 
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while( rs.next())
            {
                PessoaModelo modelo = new PessoaModelo();
                modelo.setPk_pessoa(rs.getInt(1));
                modelo.setPrimeiro_nome(rs.getString(2));
                modelo.setUltimo_nome(rs.getString(3));
                modelo.setNumero_bi(rs.getString(4));
                modelo.setFk_sexo(rs.getInt(5));
                modelo.setFk_estado_civil(rs.getInt(6));
                modelo.setEmail(rs.getString(7));
                modelo.setTelefone(rs.getInt(8));
                modelo.setData_nasc(rs.getDate(9));
                modelo.setFk_nacionalidade(rs.getInt(10));
                modelo.setFk_comuna(rs.getInt(11));
                lista.add(modelo);
            }
    
    
        }
        catch(SQLException ex)
        {
            System.out.println(" Erro "+ex.toString());
        }    
        
        return lista;
      
    }
}


