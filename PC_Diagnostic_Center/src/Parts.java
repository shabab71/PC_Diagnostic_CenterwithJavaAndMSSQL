/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author shaba
 */
class Parts {
    private int id;
    private String Ctype,PCatalog;
   
    public Parts(int id, String Ctype, String PCatlog)
    {
        this.id=id;
        this.Ctype=Ctype;
        this.PCatalog=PCatalog;
      
    }

    Parts(int aInt, int aInt0, String string, String string0, int aInt1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public int getpartsid(){
        return id;
    }
    
    public String gettype(){
        return Ctype;
    }
    public String getcatalog(){
        return PCatalog;
    }
}
