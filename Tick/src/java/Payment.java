/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 91887
 */
class Payment {
    private String userId;
    private String proName;
    private String price;
    
    public String getProName() {
        return proName;
    }
    public void setProName(String ProName) {
        this.proName = ProName;
    }
    public String getPrice() {
        return price;
    }
    public void setPrice(String Price) {
        this.price = Price;
    }
    public String getUserId() {
        return userId;
    }
    public void setUserId(String uid) {
        this.userId = uid;
    }
}
