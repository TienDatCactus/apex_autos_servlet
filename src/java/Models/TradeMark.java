/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.List;

/**
 *
 * @author Admin
 */
public class TradeMark {
    public int trademard_id;
    public String name;
    public List<String> url_logo;
    public String privacy;
    public String terms;
    public int seller_id;

    public TradeMark() {
    }

    public TradeMark(int trademard_id, String name, List<String> url_logo, String privacy, String terms, int seller_id) {
        this.trademard_id = trademard_id;
        this.name = name;
        this.url_logo = url_logo;
        this.privacy = privacy;
        this.terms = terms;
        this.seller_id = seller_id;
    }

    

    public int getTrademard_id() {
        return trademard_id;
    }

    public void setTrademard_id(int trademard_id) {
        this.trademard_id = trademard_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getUrl_logo() {
        return url_logo;
    }

    public void setUrl_logo(List<String> url_logo) {
        this.url_logo = url_logo;
    }

   

    public String getPrivacy() {
        return privacy;
    }

    public void setPrivacy(String privacy) {
        this.privacy = privacy;
    }

    public String getTerms() {
        return terms;
    }

    public void setTerms(String terms) {
        this.terms = terms;
    }

    public int getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(int seller_id) {
        this.seller_id = seller_id;
    }

    @Override
    public String toString() {
        return "TradeMark{" + "trademard_id=" + trademard_id + ", name=" + name + ", url_logo=" + url_logo + ", privacy=" + privacy + ", terms=" + terms + ", seller_id=" + seller_id + '}';
    }
    
    
}
