/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.utils;

import static java.lang.Class.forName;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author  : Yuri Domingos
 * Data     : 24 - 12 - 2021
 * Objetivo : Efectuar a conexao com o banco de dados
 */
public class Conexao {
    
    private static final String DRIVER_DATABASE = "org.postgresql.Driver";
    private static final String URL_DATABASE = "jdbc:postgresql://localhost:5432/clubefilme";
    private static String USER = "postgres";
    private static String PASSWORD = "postgres";
    private static Connection conexao;
    
    
    public static Connection abrirConexao()
    {
        
        try
        {
            forName(DRIVER_DATABASE);
            conexao = DriverManager.getConnection(URL_DATABASE, USER, PASSWORD);
            return conexao;
            
        }catch(ClassNotFoundException ex)
        {
            System.out.println("Erro na driver da base de dados " + ex.toString());
        }
        catch(SQLException ex)
        {
            System.out.println(" Erro nos dados de acessos da base de dados "+ex.toString());
        }
        
        return null;
    }
    
}
