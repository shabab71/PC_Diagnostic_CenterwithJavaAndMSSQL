/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author shaba
 */
class User {
    private int id;
    private String Username, Email, EPassword, Contact_no;
   
    public User(int id, String Username, String Email, String EPassword, String Contact_no)
    {
        this.id=id;
        this.Username=Username;
        this.Email=Email;
        this.EPassword=EPassword;
        this.Contact_no=Contact_no;
      
    }
    public int getsno(){
        return id;
    }
    public String getname(){
        return Username;
    }
    public String getaddress(){
        return Email;
    }
    public String getpass(){
        return EPassword;
    }
    public String getmobile(){
        return Contact_no;
    }
}
