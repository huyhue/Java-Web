package edu.poly.dao;

import edu.poly.entities.Category;
import edu.poly.helpers.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class CategoryDao {
    public Category insertCategory(Category entity) throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = session.beginTransaction();

        try {
            session.persist(entity);
            trans.commit();
            return entity;
        } catch (Exception e) {
            trans.rollback();
            throw e;
        }
    }

    public Category updateCategory(Category entity) throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = session.beginTransaction();

        try {
            session.saveOrUpdate(entity);
            trans.commit();
            return entity;
        } catch (Exception e) {
            trans.rollback();
            throw e;
        }
    }

    public void deleteCategory(int id) throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = session.beginTransaction();

        try {
            Category entity = (Category) session.load(Category.class, id);
            session.delete(entity);
            trans.commit();
        } catch (Exception e) {
            trans.rollback();
            throw e;
        }
    }

    public Category findCategoryById(int id) throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            Category entity = (Category) session.load(Category.class, id);
            return entity;
        } catch (Exception e) {
            throw e;
        }
    }

    public List<Category> findAllCategories() throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "FROM Category";
            Query query = session.createQuery(hql);

            return query.list();
        } catch (Exception e) {
            throw e;
        }
    }

    public List<Category> findCategoriesByName(String name) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "from Category  where p.name like :name";
            Query query = session.createQuery(hql);
            query.setParameter("name", "%" + name + "%");

            return query.list();
        } catch (Exception e) {
            throw e;
        }
    }
}
