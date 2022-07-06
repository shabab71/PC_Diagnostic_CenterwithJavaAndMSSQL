/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author shaba
 */
class Services {
    private int id,Partsid;
    private String Stype,EstAmount;
   
    public Services(int id, int Partsid, String Stype, String EstAmount)
    {
        this.id=id;
        this.Partsid=Partsid;
        this.Stype=Stype;
        this.EstAmount=EstAmount;
    }

    Services(int aInt, int aInt0, String string, String string0, int aInt1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public int getserviceid(){
        return id;
    }
    public int getpartsid(){
        return Partsid;
    }
    public String gettype(){
        return Stype;
    }
    public String getamount(){
        return EstAmount;
    }
    
}
