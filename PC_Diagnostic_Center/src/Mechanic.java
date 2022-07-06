/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author shaba
 */
class Mechanic {
    private int id;
    private String FName, LName, Contact_no;
   
    public Mechanic(int id, String FName, String LName,String Contact_no)
    {
        this.id=id;
        this.FName=FName;
        this.LName=LName;
        this.Contact_no=Contact_no;
      
    }

    Mechanic(int aInt, int aInt0, String string, String string0, int aInt1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public int getmechanicid(){
        return id;
    }
    
    public String getFname(){
        return FName;
    }
    public String getname(){
        return LName;
    }
    
    public String getmobile(){
        return Contact_no;
    }
}
