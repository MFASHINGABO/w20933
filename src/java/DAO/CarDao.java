/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Domain.Car;
import Domain.HibernateUtil;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author User
 */
public class CarDao {
   public void create(Car kar) {
        Session so = HibernateUtil.getSessionFactory().openSession();
        so.beginTransaction();
        so.save(kar);
        so.getTransaction().commit();
        so.close();
    }

    public void delete(Car kar) {
        Session so = HibernateUtil.getSessionFactory().openSession();
        so.beginTransaction();
        so.delete(kar);
        so.getTransaction().commit();
        so.close();

    }

    public String update(Car kar) {
        Session so = HibernateUtil.getSessionFactory().openSession();
        so.beginTransaction();
        so.update(kar);
        so.getTransaction().commit();
        so.close();        
        return "Success";
    }

    public Car findBYID(String id) {
        Session so = HibernateUtil.getSessionFactory().openSession();
        Car kar = (Car) so.get(Car.class, id);
        so.close();
        return kar;
    }

    public List<Car> lsAll() {
        Session s = HibernateUtil.getSessionFactory().openSession();
//        s.beginTransaction();
        List<Car> ls = s.createQuery("from Car").list();
        s.close();
        return ls;
    } 

    public void remove(Car ca) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
