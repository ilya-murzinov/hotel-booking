package com.github.ilyamurzinov.dao;

import com.github.ilyamurzinov.domain.Hotel;

import java.util.List;

/**
 * @author Ilya Murzinov
 *    Date: 16.06.14
 */
public interface HotelDAO {
    Hotel getHotel(int id);

    void addHotel(Hotel hotel);

    List<Hotel> listHotel();

    void updateHotel(Hotel hotel);

    void removeHotel(int id);
}
