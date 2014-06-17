package com.github.ilyamurzinov.service;

import com.github.ilyamurzinov.dao.HotelDAO;
import com.github.ilyamurzinov.domain.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Ilya Murzinov
 *         Date: 16.06.14
 */
@Service
public class HotelServiceImpl implements HotelService {
    @Autowired
    private HotelDAO hotelDAO;

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
    public void removeHotel(long id) {
        hotelDAO.removeHotel(id);
    }
}
