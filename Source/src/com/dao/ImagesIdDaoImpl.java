package com.dao;

import com.model.ImagesId;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class ImagesIdDaoImpl implements ImagesIdDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public ImagesId findByID(int imageIdID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(ImagesId.class);
        criteria.add(Restrictions.eq("imageId",imageIdID));
        return (ImagesId) criteria.uniqueResult();
    }

    @Override
    public void saveImagesId(ImagesId imageId) {
        session.beginTransaction();
        session.persist(imageId);
        session.getTransaction().commit();
    }

    @Override
    public void deleteImagesIdByID(int imageIdID) {
        session.beginTransaction();
        Object persistentInstance = session.load(ImagesId.class, imageIdID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateImagesId(ImagesId imageId) {
        session.beginTransaction();
        session.update(imageId);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<ImagesId> findAllImagesId() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(ImagesId.class);
        return (List<ImagesId>) criteria.list();
    }
}
