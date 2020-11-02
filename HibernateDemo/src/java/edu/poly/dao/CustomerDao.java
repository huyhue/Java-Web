package edu.poly.dao;

import edu.poly.helpers.HibernateUtil;
import edu.poly.models.Customers;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class CustomerDao {
    public Customers insertCustomer(Customers customer){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = session.beginTransaction();
        
        session.persist(customer);
        
        trans.commit();
        return customer;
    }
    public Customers updateCustomer(Customers customer){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = session.beginTransaction();
        
        session.saveOrUpdate(customer);
        
        trans.commit();
        return customer;
    }
    public void deleteCustomer(int id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = session.beginTransaction();
        Customers customer =(Customers) session.get(Customers.class, id);
        session.saveOrUpdate(customer);
        
        trans.commit();
    }
    public Customers findCustomerById(int id){
        Session session = HibernateUtil.getSessionFactory().openSession();
//        Transaction trans = session.beginTransaction();
        String hql = "from Customers where customerId = :id";
        Query query = session.createQuery(hql);
        query.setParameter("id", id);
        
//        trans.commit();
            List<Customers> list = query.list();
        return list.size()>0? list.get(0):null;
    }
    public List<Customers> findCustomersByName(String name){
        Session session = HibernateUtil.getSessionFactory().openSession();

        String hql = "from Customers p where p.name like :name";
        Query query = session.createQuery(hql);
        query.setParameter("name", "%" + name + "%");
        
        return query.list();
    }
    public Customers findById(int id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Customers customers =(Customers) session.get(Customers.class, id);
        return customers;
    }
    public List<Customers> findCustomers(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        String hql = "from Customers";
        Query query = session.createQuery(hql);
        return query.list();
    }
}
