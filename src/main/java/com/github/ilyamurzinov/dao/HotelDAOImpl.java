package com.github.ilyamurzinov.dao;

import com.github.ilyamurzinov.domain.Hotel;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Ilya Murzinov
 *         Date: 16.06.14
 */
@Repository
public class HotelDAOImpl implements HotelDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addHotel(Hotel hotel) {
        sessionFactory.getCurrentSession().save(hotel);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Hotel> listHotel() {
        return sessionFactory.getCurrentSession().createQuery("from Hotel").list();
    }

    @Override
    public void removeHotel(long id) {
        Hotel hotel = (Hotel) sessionFactory.getCurrentSession().load(Hotel.class, id);
        if (hotel != null) {
            sessionFactory.getCurrentSession().delete(hotel);
        }
    }
}
