package com.github.ilyamurzinov;

import com.github.ilyamurzinov.domain.Hotel;
import com.github.ilyamurzinov.service.HotelService;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;
import java.util.List;

/**
 * @author Ilya Murzinov
 *         Date: 17.06.14
 */
@ManagedBean(name = "hotelsProvider")
@SessionScoped
public class HotelsProvider {
    @ManagedProperty(value = "#{hotelServiceImpl}")
    private HotelService hotelService;

    public List<Hotel> listHotels() {
        return hotelService.listHotel();
    }

    public Hotel getHotel(int id) {
        return hotelService.getHotel(id);
    }

    public HotelService getHotelService() {
        return hotelService;
    }

    public void setHotelService(HotelService hotelService) {
        this.hotelService = hotelService;
    }
}
