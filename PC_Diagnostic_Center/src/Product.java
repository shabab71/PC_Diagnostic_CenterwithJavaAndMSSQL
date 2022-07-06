/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author shaba
 */
class Product {
    private int id,Desc_tag;
    private String Ptype;
   
    public Product(int id, int Desc_tag,String Ptype)
    {
        this.id=id;
        this.Desc_tag=Desc_tag;
        this.Ptype=Ptype;
      
    }

    Product(int aInt, int aInt0, String string, String string0, int aInt1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public int getproductid(){
        return id;
    }
    public int getdesc(){
        return Desc_tag;
    }
    public String gettype(){
        return Ptype;
    }
    
    
   
}
