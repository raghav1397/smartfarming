
import java.sql.*;
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
public class Performance_Kmeans {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/iot_crop","root","root");
            
            ConfusionMatrix cm = new ConfusionMatrix();
            PreparedStatement pst67 = con.prepareStatement("select count(*)count from dataset ");
            ResultSet rs67 = pst67.executeQuery();
            int c=0;
            while(rs67.next())
            {
                c=rs67.getInt("count");    
            }
            PreparedStatement ps = con.prepareStatement("select  * from cluster ");
            ResultSet rs = ps.executeQuery();
            String t="";
            while(rs.next())
            {
                t=rs.getString("crop");    
            }
            PreparedStatement pst = con.prepareStatement("select  * from  soi ");
            ResultSet rst = pst.executeQuery();
            String s="";
            while(rst.next())
            {
                s=rst.getString("id");    
            }
            
            
            cm.increaseValue(t, s, c);
            double p = cm.getPrecisionForLabel(t);
            double r = cm.getRecallForLabel(t);
            double fm = cm.getFMeasureForLabels().get(t);
            double acc = cm.getConfidence95AccuracyHigh();
            
            System.out.println(cm);
            String resultofcm=cm.toString();            
            
            System.out.println("Precision : " + p);            
            
            System.out.println("Recall : " + r);
            
            System.out.println("F-measure  F_tp,fp: " + fm);
            
            System.out.println("Accuracy : "+acc);
            
            PreparedStatement p1=con.prepareStatement("truncate table graph");
            p1.executeUpdate();
            PreparedStatement p2=con.prepareStatement("insert into graph(p,r,f,a)values('"+p+"','"+r+"','"+fm+"','"+acc+"')");
            p2.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Performance_Kmeans.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Performance_Kmeans.class.getName()).log(Level.SEVERE, null, ex);
        }
           
    }
    
}
