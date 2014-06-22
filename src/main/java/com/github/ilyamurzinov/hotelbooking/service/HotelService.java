package com.github.ilyamurzinov.hotelbooking.service;

import com.github.ilyamurzinov.hotelbooking.domain.Hotel;

import java.util.List;

/**
 * Controls transactions to use
 * {@link com.github.ilyamurzinov.hotelbooking.dao.HotelDAO}
 * with {@link org.springframework.orm.hibernate3.HibernateTransactionManager}
 *
 * @author Ilya Murzinov
 *         Date: 16.06.14
 */
public interface HotelService {
    /**
     * @param id Hotel id
     * @return Hotel by id with initialized Comments
     */
    Hotel getHotel(int id);

    void addHotel(Hotel hotel);

    /**
     * Note that comments not get initialized when using this method.
     * getHotel(int id) can be used to get Hotel with initialized Comments.
     * @return list of all hotels in database ordered by number of comments
     */
    List<Hotel> listHotel();

    /**
     * Note that comments not get initialized when using this method.
     * getHotel(int id) can be used to get Hotel with initialized Comments.
     * @param name any part of hotel's name
     * @return list of hotels, which names contain the parameter
     */
    List<Hotel> listHotel(String name);

    void updateHotel(Hotel hotel);

    void removeHotel(int id);
}
