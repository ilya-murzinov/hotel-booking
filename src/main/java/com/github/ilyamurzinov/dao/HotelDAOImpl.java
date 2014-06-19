package com.github.ilyamurzinov.dao;

import com.github.ilyamurzinov.domain.Comment;
import com.github.ilyamurzinov.domain.Hotel;
import org.hibernate.Hibernate;
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
    public Hotel getHotel(int id) {
        Hotel hotel = (Hotel) sessionFactory.getCurrentSession().get(Hotel.class, id);
        if (hotel != null) {
            for (Comment c : hotel.getComments()) {
                Hibernate.initialize(c);
            }
        }
        return hotel;
    }

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
    public void updateHotel(Hotel hotel) {
        sessionFactory.getCurrentSession().update(hotel);
    }

    @Override
    public void removeHotel(int id) {
        Hotel hotel = (Hotel) sessionFactory.getCurrentSession().load(Hotel.class, id);
        if (hotel != null) {
            sessionFactory.getCurrentSession().delete(hotel);
        }
    }
}