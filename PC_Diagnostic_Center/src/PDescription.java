/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author shaba
 */
class PDescription {
    private int id;
    private String Pcb_sl, Lcd_sl, Keyboard_sl,Ram_sl,Hardisk_sl,Battery_sl;
   
    public PDescription(int id, String Pcb_sl, String Lcd_sl,String Keyboard_sl,String Ram_sl,String Hardisk_sl,String Battery_sl)
    {
        this.id=id;
        this.Pcb_sl=Pcb_sl;
        this.Lcd_sl=Lcd_sl;
        this.Keyboard_sl=Keyboard_sl;
        this.Ram_sl=Ram_sl;
        this.Hardisk_sl=Hardisk_sl;
        this.Battery_sl=Battery_sl;
      
    }

    PDescription(int aInt, int aInt0, String string, String string0, int aInt1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public int getdescid(){
        return id;
    }
    
    public String getpcb(){
        return Pcb_sl;
    }
    public String getlcd(){
        return Lcd_sl;
    }
    
    public String getkeyboard(){
        return Keyboard_sl;
    }
    public String getram(){
        return Ram_sl;
    }
    public String gethardisk(){
        return Hardisk_sl;
    }
    public String getbattery(){
        return Battery_sl;
    }
}
