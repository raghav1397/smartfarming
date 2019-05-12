
import com.google.common.primitives.Ints;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
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
 * @author DLK 1
 */
public class K_means2 {
    static int c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41,c42,c43,c44,c45,c46,c47,c48;
static int count1,count2,count3;
static int d[];
static int mmc1[];
static int mmd1[];
static int mmd2[];
static int mmd3[];
static int k[][];
static int k1[][];
static int k2[][];
static int k3[][];
static int tempk[][];
static double m[];
static double diff[];
static int n,p;
static int z1=0,z2=0,z3=0;
String uname;
double user;
    public K_means2(String uname,double user) 
    {
        this.uname=uname;
        this.user=user;
        try {
        Scanner scr=new Scanner(System.in);    
        List <Integer>rr=new ArrayList<Integer>();  
        int [] data;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/iot_crop","root","root");
        PreparedStatement pss=con.prepareStatement("select * from temp where cate='humidity'");
        ResultSet set = pss.executeQuery();
        if(set.next())
        {
          // int a=set.getInt("c1");
           rr.add(set.getInt(1));
           rr.add(set.getInt(2));
           rr.add(set.getInt(3));
           rr.add(set.getInt(4));
           rr.add(set.getInt(5));
           rr.add(set.getInt(6));
           rr.add(set.getInt(7));
           rr.add(set.getInt(8));
           rr.add(set.getInt(9));
           rr.add(set.getInt(10));
           rr.add(set.getInt(11));
           rr.add(set.getInt(12));
           rr.add(set.getInt(13));
           rr.add(set.getInt(14));
           rr.add(set.getInt(15));
           rr.add(set.getInt(16));
           rr.add(set.getInt(17));
           rr.add(set.getInt(18));
           rr.add(set.getInt(19));
           rr.add(set.getInt(20));
           rr.add(set.getInt(21));
           rr.add(set.getInt(22));
           rr.add(set.getInt(23));
           rr.add(set.getInt(24));
           rr.add(set.getInt(25));
           rr.add(set.getInt(26));
           rr.add(set.getInt(27));
           rr.add(set.getInt(28));
           rr.add(set.getInt(29));
           rr.add(set.getInt(30));
              rr.add(set.getInt(31));
           rr.add(set.getInt(32));
           rr.add(set.getInt(33));
           rr.add(set.getInt(34));
           rr.add(set.getInt(35));
           rr.add(set.getInt(36));
           rr.add(set.getInt(37));
           rr.add(set.getInt(38));
           rr.add(set.getInt(39));
           rr.add(set.getInt(40));
              rr.add(set.getInt(41));
           rr.add(set.getInt(42));
           rr.add(set.getInt(43));
           rr.add(set.getInt(44));
           rr.add(set.getInt(45));
           rr.add(set.getInt(46));
           rr.add(set.getInt(47));
           rr.add(set.getInt(48));          
        }
        data = new int[rr.size()];
        data = Ints.toArray(rr);
        n=data.length;
        d=new int[n];
       mmd1=new int[n];
       mmd2=new int[n];
       mmd3=new int[n];
//System.out.println("Enter "+n+" elements: ");
        for(int i=0;i<data.length;++i)
            d[i]=data[i];
        /* Accepting num of clusters */
//System.out.println("Enter the number of clusters: ");
        
        p=3;    /* Initialising arrays */
        k=new int[p][n];
        tempk=new int[p][n];
        m=new double[p];
        diff=new double[p];
        /* Initializing m */
        for(int i=0;i<p;++i)
            m[i]=d[i];
        int temp=0;
        int flag=0;
        do
        {
            for(int i=0;i<p;++i)
                for(int j=0;j<n;++j)
                {
                    k[i][j]=-1;
                }
            for(int i=0;i<n;++i) // for loop will cal cal_diff(int) for every element.
            {
                temp=cal_diff(d[i]);
                if(temp==0)
                    k[temp][count1++]=d[i];
                else
                    if(temp==1)
                        k[temp][count2++]=d[i];
                    else
                        if(temp==2)
                            k[temp][count3++]=d[i];
            }
            cal_mean(); // call to method which will calculate mean at this step.
            flag=check1(); // check if terminating condition is satisfied.
            if(flag!=1)
                /*Take backup of k in tempk so that you can check for equivalence in next step*/
                for(int i=0;i<p;++i)
                    for(int j=0;j<n;++j)
                        tempk[i][j]=k[i][j];
            
            System.out.println("\n\nAt this step");
            System.out.println("\nValue of clusters");
            for(int i=0;i<p;++i)
            {
                System.out.print("K"+(i+1)+"{ ");
                for(int j=0;k[i][j]!=-1 && j<n-1;++j)
                    System.out.print(k[i][j]+" ");
                System.out.println("}");
            }//end of for loop
            System.out.println("\nValue of m ");
            for(int i=0;i<p;++i)
                System.out.print("m"+(i+1)+"="+m[i]+"  ");
            
            count1=0;count2=0;count3=0;
        }
        while(flag==0);
        System.out.println("\n\n\nThe Final Clusters By Kmeans are as follows: ");
        for(int i=0;i<p;++i)
        {
            System.out.print("K"+(i+1)+"{ ");
            for(int j=0;k[i][j]!=-1 && j<n-1;++j)
                System.out.print(k[i][j]+" ");
            System.out.println("}");
        }    
        
 // System.out.println("value for kkkkk "+k[2][20]);
       // double user=19.0;
        System.out.println("\n");
        System.out.println(m[0]);
        System.out.println(m[1]);
        System.out.println(m[2]);
        double mm1,mm2,mm3;
        mm1=m[0]-user;
        mm2=m[1]-user;
        mm3=m[2]-user;
        mm1 = Math.abs(mm1);
        mm2 = Math.abs(mm2);
        mm3 = Math.abs(mm3);
        //  System.out.println("xxxxx "+xxxx);
        System.out.println("\n");
        System.out.println("k1 difference value "+mm1);
        System.out.println("k2 difference value "+mm2);
        System.out.println("k3 difference value "+mm3);
        System.out.println("\n");
        if(mm1>=mm2)
        {
            if(mm1>=mm3)
            {
                System.out.println(mm1+" k1 value is 1");
                z1=1;
            }
            else
            {
                System.out.println(mm3+" k3 value is 1");
                z3=1;
            }
        }
        else
        {
            if(mm2>=mm3)
            {
                System.out.println(mm2+" k2 value is 1");
                z2=1;
            }
            else
            {
                System.out.println(mm3+" k3 value is 1");
                z3=1;
            }
        } if(mm1<=mm2)
        {
            if(mm1<=mm3)
            {
                System.out.println(mm1+" k1 value is 9");
                z1=9;
            }
            else
            {
                System.out.println(mm3+" k3 value is 9");
                z3=9;
            }
        }
        else
        {
            if(mm2<=mm3)
            {
                System.out.println(mm2+" k2 value is 9");
                z2=9;
          }
          else
          {
             System.out.println(mm3+" k3 value is 9"); 
             z3=9;
          }
      } if(mm1>=mm2)
      {
          if(mm2>=mm3)
          {
              System.out.println(mm1+" k2 value is 3");
              z2=3;
          }
          else if(mm1>=mm3)
          {
              System.out.println(mm3+" k3 value is 3");
              z3=3;
          }
          else
          {
             System.out.println(mm1+" k1 value is 3"); 
             z1=3;
          }
      }
      else
      {
          if(mm1>=mm3)
          {
              System.out.println(mm1+" k1 value is 3");
              z1=3;
          }
          else if(mm2>=mm3)
          {
              System.out.println(mm3+" k3 value is 3");
              z3=3;
          }
          else
          {
             System.out.println(mm2+" k2 value is 3"); 
             z2=3;
          }
      }
      List mmx = null ,mmy,mmz;
    //  int mmdx1[]=new mmdx1[13];
      int u1=0,u2=0,u3=0;
        System.out.println(z1+" "+z2+" "+z3);
        System.out.println(rr);
        mmc1=new int[48];
      //  System.out.println(rr.set(2, 48));
        for(int bow=0;bow<48;bow++)
        {
            mmc1[bow]=rr.set(bow,48);            
        }
        System.out.println(mmc1[46]);
       // System.out.println(mmc1));
for(int j=0;k[0][j]!=-1 && j<n-1;++j)
{   mmd1[j]=k[0][j];
    u1=u1+1;   
}
for(int j=0;k[1][j]!=-1 && j<n-1;++j)
{  mmd2[j]=k[1][j];
   u2=u2+1;
}
for(int j=0;k[2][j]!=-1 && j<n-1;++j)
{  
   mmd3[j]=k[2][j]; 
   u3=u3+1;
}
    //    System.out.println(mmd1[22]);
for(int xx=0;xx<u1;xx++)
{
    for(int yy=0;yy<48;yy++)
    {
        if(mmc1[yy]==mmd1[xx])
        {
            mmc1[yy]=z1;
        }
    }
}
for(int xx=0;xx<u2;xx++)
{
    for(int yy=0;yy<48;yy++)
    {
        if(mmc1[yy]==mmd2[xx])
        {
            mmc1[yy]=z2;
        }
    }
}
for(int xx=0;xx<u3;xx++)
{
    for(int yy=0;yy<48;yy++)
    {
        if(mmc1[yy]==mmd3[xx])
        {
            mmc1[yy]=z3;
        }
    }
}
System.out.println(u1+" "+u2+" "+u3);
    PreparedStatement pps = con.prepareStatement("insert into cl (uname,cate,temp,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41,c42,c43,c44,c45,c46,c47,c48) values ('"+uname+"','rain','"+user+"','"+mmc1[0]+"','"+mmc1[1]+"','"+mmc1[2]+"','"+mmc1[3]+"','"+mmc1[4]+"','"+mmc1[5]+"','"+mmc1[6]+"','"+mmc1[7]+"','"+mmc1[8]+"','"+mmc1[9]+"','"+mmc1[10]+"','"+mmc1[11]+"','"+mmc1[12]+"','"+mmc1[13]+"','"+mmc1[14]+"','"+mmc1[15]+"','"+mmc1[16]+"','"+mmc1[17]+"','"+mmc1[18]+"','"+mmc1[19]+"','"+mmc1[20]+"','"+mmc1[21]+"','"+mmc1[22]+"','"+mmc1[23]+"','"+mmc1[24]+"','"+mmc1[25]+"','"+mmc1[26]+"','"+mmc1[27]+"','"+mmc1[28]+"','"+mmc1[29]+"','"+mmc1[30]+"','"+mmc1[31]+"','"+mmc1[32]+"','"+mmc1[33]+"','"+mmc1[34]+"','"+mmc1[35]+"','"+mmc1[36]+"','"+mmc1[37]+"','"+mmc1[38]+"','"+mmc1[39]+"','"+mmc1[40]+"','"+mmc1[41]+"','"+mmc1[42]+"','"+mmc1[43]+"','"+mmc1[44]+"','"+mmc1[45]+"','"+mmc1[46]+"','"+mmc1[47]+"')");
        int executeUpdate = pps.executeUpdate();
        System.out.println("rain inserted");
       // return uname;
    } catch (Exception ex) 
    {
        Logger.getLogger(K_means2.class.getName()).log(Level.SEVERE, null, ex);
    }
    }

static int cal_diff(int a) // This method will determine the cluster in which an element go at a particular step.
{
int temp1=0;
for(int i=0;i<p;++i)
{
if(a>m[i])
diff[i]=a-m[i];
else
diff[i]=m[i]-a;
}
int val=0;
double temp=diff[0];
for(int i=0;i<p;++i)
{
if(diff[i]<temp)
{
temp=diff[i];
val=i;
}
}//end of for loop
return val;
}

static void cal_mean() // This method will determine intermediate mean values
{
for(int i=0;i<p;++i)
m[i]=0; // initializing means to 0
int cnt=0;
for(int i=0;i<p;++i)
{
cnt=0;
for(int j=0;j<n-1;++j)
{
if(k[i][j]!=-1)
{
m[i]+=k[i][j];
++cnt;
}}
m[i]=m[i]/cnt;
}
}

static int check1() // This checks if previous k ie. tempk and current k are same.Used as terminating case.
{
for(int i=0;i<p;++i)
for(int j=0;j<n;++j)
if(tempk[i][j]!=k[i][j])
{
return 0;
}
return 1;
}

public static void main(String args[])
{
    
}
}
