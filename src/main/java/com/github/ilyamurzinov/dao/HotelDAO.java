package com.github.ilyamurzinov.dao;

import com.github.ilyamurzinov.domain.Hotel;

import java.util.List;

/**
 * @author Ilya Murzinov
 *    Date: 16.06.14
 */
public interface HotelDAO {
    public Hotel getHotel(int id);

    public void addHotel(Hotel hotel);

    public List<Hotel> listHotel();

    public void removeHotel(int id);
}
