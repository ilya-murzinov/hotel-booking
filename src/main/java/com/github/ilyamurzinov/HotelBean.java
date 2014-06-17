package com.github.ilyamurzinov;

import com.github.ilyamurzinov.service.HotelService;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;

/**
 * @author Ilya Murzinov
 *         Date: 17.06.14
 */
@ManagedBean(name = "hotel")
@SessionScoped
public class HotelBean {
    @ManagedProperty(value = "#{hotelServiceImpl}")
    private HotelService hotelService;

    public int getI() {
        return 42;
    }

    public HotelService getHotelService() {
        return hotelService;
    }

    public void setHotelService(HotelService hotelService) {
        this.hotelService = hotelService;
    }
}
