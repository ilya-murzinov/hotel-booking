package com.github.ilyamurzinov.hotelbooking.service;

import com.github.ilyamurzinov.hotelbooking.dao.HotelDAO;
import com.github.ilyamurzinov.hotelbooking.domain.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Controls transactions to use
 * {@link com.github.ilyamurzinov.hotelbooking.dao.HotelDAO}
 * with {@link org.springframework.orm.hibernate3.HibernateTransactionManager}
 *
 * @author Ilya Murzinov
 *         Date: 16.06.14
 */
@Service
public class HotelServiceImpl implements HotelService {
    @Autowired
    private HotelDAO hotelDAO;

    @Transactional
    @Override
    public Hotel getHotel(int id) {
        return hotelDAO.getHotel(id);
    }

    @Transactional
    @Override
    public void addHotel(Hotel hotel) {
        hotelDAO.addHotel(hotel);
    }

    @Transactional
    @Override
    public List<Hotel> listHotel() {
        return hotelDAO.listHotel();
    }

    @Transactional
    @Override
    public List<Hotel> listHotel(String name) {
        return hotelDAO.listHotel(name);
    }

    @Transactional
    @Override
    public void updateHotel(Hotel hotel) {
        hotelDAO.updateHotel(hotel);
    }

    @Transactional
    @Override
    public void removeHotel(int id) {
        hotelDAO.removeHotel(id);
    }
}
