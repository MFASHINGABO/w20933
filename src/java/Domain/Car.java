 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Domain;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author User
 */
@Entity
public class Car {
 @Id   
 private String Plate_No;
 private Date  Manufacturing_Date;
 private String Cost;
 private String Institution;

    public String getPlate_No() {
        return Plate_No;
    }

    public void setPlate_No(String Plate_No) {
        this.Plate_No = Plate_No;
    }

    public Date getManufacturing_Date() {
        return Manufacturing_Date;
    }

    public void setManufacturing_Date(Date Manufacturing_Date) {
        this.Manufacturing_Date = Manufacturing_Date;
    }

    public String getCost() {
        return Cost;
    }

    public void setCost(String Cost) {
        this.Cost = Cost;
    }

    public String getInstitution() {
        return Institution;
    }

    public void setInstitution(String Institution) {
        this.Institution = Institution;
    }

 
}
