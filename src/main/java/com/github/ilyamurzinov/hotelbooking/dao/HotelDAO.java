package com.github.ilyamurzinov.hotelbooking.dao;

import com.github.ilyamurzinov.hotelbooking.domain.Hotel;

import java.util.List;

/**
 * @author Ilya Murzinov
 *    Date: 16.06.14
 */
public interface HotelDAO {
    Hotel getHotel(int id);

    void addHotel(Hotel hotel);

    List<Hotel> listHotel();

    List<Hotel> listHotel(String name);

    void updateHotel(Hotel hotel);

    void removeHotel(int id);
}
