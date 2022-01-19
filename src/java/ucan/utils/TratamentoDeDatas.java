/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucan.utils;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Yuri Domingos
 * Dta    : 30 -12 - 2021
 * Objectivo : Tratar os dados do tipo normal a serem a aceitos no formato sql 
 */
public class TratamentoDeDatas 
{
    
 
    /*
       Para pegar a data de nascimento de uma pessoa 
    
       SELECT *FROM PESSOA WHERE EXTRACT(YEAR FROM AGE(data_nasc)) BETWEEN 12 and 40
    
       Para pegar o tempo  de duracao do filme 
    
       SELECT SUBSTRING(duracao from '[0-3]+') from filme
    
    
    */  
                  ;           
      public static Date converterDataNormalParaDataSQL(String dataFormatoNormal)
      {
          
          java.sql.Date sqlDate = null; 
          
           try
           {
               SimpleDateFormat d= new SimpleDateFormat("dd/MM/yyyy");
               java.util.Date dt=d.parse(dataFormatoNormal);
                sqlDate = new java.sql.Date(dt.getTime());
               
               
           } catch (ParseException ex) 
           {
               Logger.getLogger(TratamentoDeDatas.class.getName()).log(Level.SEVERE, null, ex);
           }
           
           return sqlDate;
   
        }
      
      
    
    
}
