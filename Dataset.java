
import au.com.bytecode.opencsv.CSVReader;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author ADMIN
 */
public class Dataset 
{
    public static void main(String[] args) 
    {
            
            try
            {
                
                String csvFile ="D:\\feed.csv\\";
                CSVReader reader = null;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/iot_crop","root","root");
                System.out.println("---Connection created!----");
                 PreparedStatement paa= con.prepareStatement("truncate table dataset");
                    paa.executeUpdate();
                    
                    reader = new CSVReader(new FileReader(csvFile));
                    String[] line;
                    while ((line = reader.readNext()) != null)
                    {
                        
                        String query="insert into dataset(dte,id,temp,hum,mois,pressure)values('"+line[0]+"','"+line[1]+"','"+line[2]+"','"+line[3]+"','"+line[4]+"','"+line[5]+"') ";
                        PreparedStatement ps=con.prepareStatement(query);
                        ps.executeUpdate();
                        System.out.println(query);
                    }
                    
                    
                    
                } catch (ClassNotFoundException ex) {
            
        } catch (SQLException ex) {
            
        } catch (FileNotFoundException ex) {
           
        } catch (IOException ex) {
            
        }
                
    }
    
}
