
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.google.common.primitives.Ints;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



/**
 *
 * @author ADMIN
 */
 public class Svm_action {
    
     public static void main(String[] args) {
         try {
             Scanner s=new Scanner(System.in);
             System.out.println("Enter soil type in Integer");
             int soil=s.nextInt();
             String uname=s.next();
             
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost/iot_crop","root","root");
             PreparedStatement prep=con.prepareStatement("truncate table uu");
             prep.executeUpdate();
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
            PreparedStatement q2=con.prepareStatement("insert into uu(name,temp,hum,mois,press,soil)values('"+uname+"','"+tem+"','"+hm+"','"+ms+"','"+prs+"','"+soil+"')");
            q2.executeUpdate();
            
             List lll1=new ArrayList();
            List lll2=new ArrayList();
            List lll3=new ArrayList();
            List lll4=new ArrayList();
            List lll5=new ArrayList();
            List lll6=new ArrayList();
            List lll7=new ArrayList();
            List llz=new ArrayList();
                
                
                 int user=0,userh1=0;
                 int user1,user2,userh11=0,userh12=0;
                 
                PreparedStatement psr = con.prepareStatement("select * from soi where val='"+soil+"'");
                ResultSet rmo = psr.executeQuery();
                int zyo=0;
                System.out.println("hi1");
                PreparedStatement psr3 = con.prepareStatement("select * from uu where name='"+uname+"'");
                ResultSet rmo3 = psr3.executeQuery();
                if(rmo3.next())
                {
                   double userz=rmo3.getDouble("temp");
                   double userh=rmo3.getDouble("hum");
                   double userm=rmo3.getDouble("mois");
                   double userp=rmo3.getDouble("press");
                   user=(int)userz; 
                   userh1=(int)userh;
                   
                }               
                user1=user+5;
                user2=user-5;
                userh11=userh1+5;
                userh12=userh1-5;
                
               // so[]=
                List aa=new ArrayList();   
                List mmz=new ArrayList(); 
                List lll=new ArrayList();
                List l2=new ArrayList();
        
                while(rmo.next())
                {
                    mmz.add(rmo.getString("crop"));
                }              
                System.out.println("hi2");
                System.out.println("soil based crops "+mmz);
               System.out.println(mmz.size());
               
                for(int mmd=0;mmd<mmz.size();mmd++)
                {
                    PreparedStatement psr1 = con.prepareStatement("select * from temp where cate='temp'");
                    ResultSet rrm = psr1.executeQuery();
                    if(rrm.next())
                    {                        
                        lll7.add(rrm.getInt(""+mmz.get(mmd)+""));
                    }
                }
                System.out.println("hi3 "+lll7);
                
                for(int mmd=0;mmd<lll7.size();mmd++)
                {
                   // double uu=0.0;
             // lll7.get(mmd);
              int data[] = Ints.toArray(lll7);
                    System.out.println("Data  "+data[0]);
                    if(data[mmd]>=user2&&data[mmd]<user1)
                    {                        
                        aa.add(mmz.get(mmd));                      
                    }
                    else
                    {
                        System.out.println(data[mmd]+" "+user2+" "+user1);
                    }
                }
                
              System.out.println(" temp based select crops are "+aa);
              List bb=new ArrayList();
             for(int mmd=0;mmd<aa.size();mmd++)
                {
                    PreparedStatement psr1 = con.prepareStatement("select * from temp where cate='humidity'");
                    ResultSet rrm = psr1.executeQuery();
                    if(rrm.next())
                    {                        
                        lll.add(rrm.getDouble(""+aa.get(mmd)+""));
                    }
                }
                System.out.println("Humidity :"+lll+" "+aa);
                
                for(int mmd=0;mmd<aa.size();mmd++)
                {
                    PreparedStatement psr1 = con.prepareStatement("select * from temp where cate='moisture'");
                    ResultSet rrm = psr1.executeQuery();
                    if(rrm.next())
                    {                        
                        lll1.add(rrm.getDouble(""+aa.get(mmd)+""));
                    }
                }
                System.out.println("Moisture :"+lll1+" "+aa);
                for(int mmd=0;mmd<aa.size();mmd++)
                {
                    PreparedStatement psr1 = con.prepareStatement("select * from temp where cate='pressure'");
                    ResultSet rrm = psr1.executeQuery();
                    if(rrm.next())
                    {                        
                        lll2.add(rrm.getDouble(""+aa.get(mmd)+""));
                    }
                }
               
                System.out.println("Pressure :"+lll2+" "+aa);
                LinkedHashSet lh=new LinkedHashSet();
                System.out.println("lh output"+lh);
               
               
                 List ach=new ArrayList();
               
                String namecro="";
                System.out.println("Soil and Temp Based Recommended Crops "+aa);
                System.out.println("Soil and Temp Based Recommended Crops Values "+ach);
                PreparedStatement pstt=con.prepareStatement("truncate table svm"); 
                pstt.executeUpdate();
                PreparedStatement pop=con.prepareStatement("truncate table svm_t"); 
                pop.executeUpdate();
                LinkedHashMap lm=new LinkedHashMap();
                 LinkedList<String> l=new LinkedList<String>(); 
                 LinkedList<String> ll=new LinkedList<String>(); 
                  PreparedStatement pr=con.prepareStatement("select * from cropp ");
                  ResultSet rr=pr.executeQuery(); 
                  String crp="",cid="",crop="";
                   while(rr.next())
                   {
                       
                       crp=rr.getString("symp");
                       cid=rr.getString("id");
                       crop=rr.getString("cropp");
                       String crpp=crp.replace("[", "");
                       String cro=crpp.replace("]", "");
//                       System.out.println(cro);
                       
                       PreparedStatement ptt=con.prepareStatement("insert into svm_t(id,cid,crop)values('"+cid+"','"+cro+"','"+crop+"')");
                       
                       ptt.executeUpdate();
                    }
                   
                 
                   for(int sv=0;sv<aa.size();sv++)
                   {
                     PreparedStatement ph=con.prepareStatement("select * from svm_t where cid='"+aa.get(sv)+"'"); 
                     ResultSet rh=ph.executeQuery(); 
                     while(rh.next())
                     {
                       l.add(rh.getString("id"));
                       ll.add(rh.getString("crop"));
                     }
                   }
                   System.out.println("l value "+l);
                   
                  for(int ij=0;ij<l.size();ij++)
                  {
                  PreparedStatement ps=con.prepareStatement("insert into svm(id,crop)values('"+l.get(ij)+"','"+ll.get(ij)+"')"); 
                  ps.executeUpdate();
                  }
                
                PreparedStatement pss12=con.prepareStatement("select * from svm group by id order by id desc limit 1");
                ResultSet rrrs=pss12.executeQuery();
                if(rrrs.next())
                {
                    namecro=rrrs.getString("crop");
                    
                }
//                else
//                {
//                    System.out.println(namecro);
//                    System.out.println("hi hi");
//                }
               System.out.println("Final Recommended Crop is "+namecro);
             
//             Predict p=new Predict();
//             p.crop();
         } catch (ClassNotFoundException ex) {
             Logger.getLogger(Svm_action.class.getName()).log(Level.SEVERE, null, ex);
         } catch (SQLException ex) {
             Logger.getLogger(Svm_action.class.getName()).log(Level.SEVERE, null, ex);
         }
         
     }
}
