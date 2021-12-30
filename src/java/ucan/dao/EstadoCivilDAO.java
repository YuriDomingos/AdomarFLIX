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
import ucan.modelo.EstadoCivilModelo;
import ucan.utils.Conexao;

/**
 *
 * @author  Yuri Domingos 
 * Data    : 28 - 12 - 2021
 * Objectivo : 
 */
public class EstadoCivilDAO {
    
    
    public ArrayList<EstadoCivilModelo> listarEstadoCivil()
    {
        ArrayList<EstadoCivilModelo> lista = new ArrayList<>();
        String query = "SELECT * FROM public.estado_civil ";
        
        try
        {
            Connection con = Conexao.abrirConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while ( rs.next())
            {
                EstadoCivilModelo estadoModelo = new EstadoCivilModelo();
                estadoModelo.setPk_estado_civil(rs.getInt(1));
                estadoModelo.setDescricao(rs.getString(2));
                lista.add(estadoModelo);
                
            }
            
        }catch(SQLException ex)
        {
            System.out.println("Erro "+ex.toString());
        }
        
        return lista;
    }
    
}
