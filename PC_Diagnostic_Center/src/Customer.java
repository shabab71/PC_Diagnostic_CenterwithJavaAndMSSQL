/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author shaba
 */
class Customer {
    private int id,Productid;
    private String FName, LName, Sub_date, Contact_no;
   
    public Customer(int id, int Productid, String FName, String LName, String Sub_date,String Contact_no)
    {
        this.id=id;
        this.Productid=Productid;
        this.FName=FName;
        this.LName=LName;
        this.Sub_date=Sub_date;
        this.Contact_no=Contact_no;
      
    }

    Customer(int aInt, int aInt0, String string, String string0, int aInt1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public int getcustomerid(){
        return id;
    }
    public int getproductid(){
        return Productid;
    }
    public String getFname(){
        return FName;
    }
    public String getLname(){
        return LName;
    }
    public String getSub_date(){
        return Sub_date;
    }
    public String getmobile(){
        return Contact_no;
    }
}
