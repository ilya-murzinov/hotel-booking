package com.github.ilyamurzinov.hotelbooking.managedbeans;

import com.github.ilyamurzinov.hotelbooking.domain.Hotel;
import com.github.ilyamurzinov.hotelbooking.service.HotelService;

import javax.faces.bean.*;

/**
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
@ManagedBean(name = "addHotelBean")
@ViewScoped
public class AddHotelBean {
    @ManagedProperty(value = "#{hotelServiceImpl}")
    private HotelService hotelService;
    private Hotel dataModel;

    public void setHotelService(HotelService hotelService) {
        this.hotelService = hotelService;
    }

    public Hotel getDataModel() {
        if (dataModel == null) {
            dataModel = new Hotel();
        }
        return dataModel;
    }

    public String addHotel() {
        hotelService.addHotel(dataModel);
        return "index";
    }
}

