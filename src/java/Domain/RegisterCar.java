/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Domain;

import DAO.CarDao;
import java.util.List;


/**
 *
 * @author User
 */
public class RegisterCar {
    private Car caa=new Car();
    private CarDao cda=new CarDao();
    private Iterable<Car> RegisteredCarList;
    
    public void registerCar(Car ca){
       cda.create(ca); 
    }
    public void regCar(Car caa, Car ca){
      cda.update(ca);
    }
     public void remove(Car ca){
        cda.remove(ca);
    }

    public Car getCaa() {
        return caa;
    }
    
    public boolean getCar(String crs) {
        boolean rsp = false;
        for(Car cr: RegisteredCarList){
           if(cr.getPlate_No().equals(crs)){
               rsp = true;
               return rsp;
           }
        }
        return rsp;
    }
    

  public List<Car>getCars(){
      return cda.lsAll();
  }
}
