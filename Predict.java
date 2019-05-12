
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;
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
public class Predict {
    public String crop()
    {
            String fincr="";    
        try {
            Scanner s=new Scanner(System.in);
            System.out.println("Enter soil type in Integer");
            int soil=s.nextInt();
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/iot_crop","root","root");
            
            PreparedStatement pst=con.prepareStatement("SELECT * FROM dataset");
            ResultSet rst=pst.executeQuery();
            int temp=0;int hum=0; int mois=0;int press=0; int tot=0;
            while(rst.next())
            {
               
                temp +=rst.getInt("temp");
                hum +=rst.getInt("hum");
                mois +=rst.getInt("mois");
                press +=rst.getInt("pressure");
               
            }
            PreparedStatement q1=con.prepareStatement("SELECT count(*)total FROM dataset");
            ResultSet result=q1.executeQuery();
            
            while(result.next())
            {
                tot=result.getInt("total");
            }
            System.out.println(temp);
            
            double tem=temp/tot;
            double hm=hum/tot;
            double ms=mois/tot;
            double prs=press/tot;
            System.out.println("temp "+tem);
           
            K_means k=new K_means("moni",tem);
            K_means k1=new K_means("moni",hm);
            K_means k2=new K_means("moni",ms);
            K_means k3=new K_means("moni",prs);
            K_means k4=new K_means("moni",soil);
            
            PreparedStatement ps=con.prepareStatement("select * from cl");
            ResultSet rs=ps.executeQuery();
            ArrayList al=new ArrayList();
            int rr5=0;
            int rr6=0; 
            int rr7=0;
            int rr8=0;
            int rr9=0;
            int rr10=0;
            int rr11=0;
            int rr12=0;
            int rr13=0;
            int rr14=0;
            int rr15=0;
            int rr16=0;
            int rr17=0;
            int rr18=0;
            int rr19=0;
            int rr20=0;
            int rr21=0;
            int rr22=0;
            int rr23=0;
            int rr24=0;
            int rr25=0;
            int rr26=0;
            int rr27=0;
            int rr28=0;
            int rr29=0;
            int rr30=0;
            int rr31=0;
            int rr32=0;
            int rr33=0;
            int rr34=0;
            int rr35=0;
            int rr36=0;
            int rr37=0;
            int rr38=0;
            int rr39=0;
            int rr40=0;
            int rr41=0;
            int rr42=0;
            int rr43=0;
            int rr44=0;
            int rr45=0;
            int rr46=0;
            int rr47=0;
            int rr48=0;
            int rr49=0;
            int rr50=0;
            int rr51=0;  
            int rr4=0;
            while(rs.next())
            {
                rr4 +=rs.getInt(4);
                rr5 +=rs.getInt(5);
                rr6 +=rs.getInt(6);
                rr7 +=rs.getInt(7);
                rr8 +=rs.getInt(8);
                rr9 +=rs.getInt(9);
                rr10 +=rs.getInt(10);
                rr11 +=rs.getInt(11);
                rr12 +=rs.getInt(12);
                rr13 +=rs.getInt(13);
                rr14 +=rs.getInt(14);
                rr15 +=rs.getInt(15);
                rr16 +=rs.getInt(16);
                rr17 +=rs.getInt(17);
                rr18 +=rs.getInt(18);
                rr19 +=rs.getInt(19);
                rr20 +=rs.getInt(20);
                rr21 +=rs.getInt(21);
                rr22 +=rs.getInt(22);
                rr23 +=rs.getInt(23);
                rr24 +=rs.getInt(24);
                rr25 +=rs.getInt(25);
                rr26 +=rs.getInt(26);
                rr27 +=rs.getInt(27);
                rr28 +=rs.getInt(28);
                rr29 +=rs.getInt(29);
                rr30 +=rs.getInt(30);
                rr31 +=rs.getInt(31);
                rr32 +=rs.getInt(32);
                rr33 +=rs.getInt(33);
                rr34 +=rs.getInt(34);
                rr35 +=rs.getInt(35);
                rr36 +=rs.getInt(36);
                rr37 +=rs.getInt(37);
                rr38 +=rs.getInt(38);
                rr39 +=rs.getInt(39);
                rr40 +=rs.getInt(40);
                rr41 +=rs.getInt(41);
                rr42 +=rs.getInt(42);
                rr43 +=rs.getInt(43);
                rr44 +=rs.getInt(44);
                rr45 +=rs.getInt(45);
                rr46 +=rs.getInt(46);
                rr47 +=rs.getInt(47);
                rr48 +=rs.getInt(48);
                rr49 +=rs.getInt(49);
                rr50 +=rs.getInt(50);
                rr51 +=rs.getInt(51);
                
            }
            
            al.add(rr4);
            al.add(rr5);
            al.add(rr6);
            al.add(rr7);
            al.add(rr8);
            al.add(rr9);
            al.add(rr10);
            al.add(rr11);
            al.add(rr12);
            al.add(rr13);
            al.add(rr14);
            al.add(rr15);
            al.add(rr16);
            al.add(rr17);
            al.add(rr18);
            al.add(rr19);
            al.add(rr20);
            al.add(rr21);
            al.add(rr22);
            al.add(rr23);
            al.add(rr24);
            al.add(rr25);
            al.add(rr26);
            al.add(rr27);
            al.add(rr28);
            al.add(rr29);
            al.add(rr30);
            al.add(rr31);
            al.add(rr32);
            al.add(rr33);
            al.add(rr34);
            al.add(rr35);
            al.add(rr36);
            al.add(rr37);
            al.add(rr38);
            al.add(rr39);
            al.add(rr40);
            al.add(rr41);
            al.add(rr42);
            al.add(rr43);
            al.add(rr44);
            al.add(rr45);
            al.add(rr46);
            al.add(rr47);
            al.add(rr48);
            al.add(rr49);
            al.add(rr50);
            al.add(rr51);
            for(int j=0;j<al.size();j++)
            {
                PreparedStatement pps = con.prepareStatement("insert into cluster(crop)values('"+al.get(j).toString()+"')");
                pps.executeUpdate();
            }
            PreparedStatement pre = con.prepareStatement("SELECT * FROM cluster GROUP BY crop DESC LIMIT 1");
            ResultSet res=pre.executeQuery();
            String cr="";
            while(res.next())
            {
                cr=res.getString("crop");
                
            }
            PreparedStatement pt = con.prepareStatement("SELECT * FROM cropp where id='"+cr+"'");
            ResultSet rtt=pt.executeQuery();
            
            if(rtt.next())
            {
                fincr=rtt.getString("cropp");
                System.out.println("Recommended Crop "+fincr);
            }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Predict.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Predict.class.getName()).log(Level.SEVERE, null, ex);
        }
        return fincr;
    }
    
   
    
}
