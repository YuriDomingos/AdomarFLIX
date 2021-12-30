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
import ucan.modelo.SexoModelo;
import ucan.utils.Conexao;

/**
 *
 * @author Yuri Domingos 
 * Data   : 28 - 12 - 2021
 * Objectivo : Construir o dao do sexo 
 */
public class SexoDAO 
{
    
    public ArrayList<SexoModelo> listar_sexo()
    {
        ArrayList<SexoModelo> lista = new ArrayList<SexoModelo>();
        String query = "SELECT *FROM sexo;";
        
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while ( rs.next())
            {
                SexoModelo sexoModelo = new SexoModelo();
                sexoModelo.setPk_sexo(rs.getInt(1));
                sexoModelo.setDescricao(rs.getString(2));
                lista.add(sexoModelo);
            }
            
        }catch(SQLException ex)
        {
            System.out.println("Erro ao listar " +ex.toString());
        }
        
        return lista;
    }
    
}
