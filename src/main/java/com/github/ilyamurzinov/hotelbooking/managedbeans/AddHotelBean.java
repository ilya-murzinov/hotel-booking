package com.github.ilyamurzinov.hotelbooking.managedbeans;

import com.github.ilyamurzinov.hotelbooking.domain.Hotel;
import com.github.ilyamurzinov.hotelbooking.service.HotelService;

import javax.annotation.PostConstruct;
import javax.faces.bean.*;

/**
 * Backing bean for add.xhtml
 *
 * Creates and saves new hotel to database using
 * {@link com.github.ilyamurzinov.hotelbooking.service.HotelService}
 *
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
@ManagedBean
@ViewScoped
public class AddHotelBean {
    @ManagedProperty(value = "#{hotelServiceImpl}")
    private HotelService hotelService;
    private Hotel dataModel;

    @PostConstruct
    public void init() {
        dataModel = new Hotel();
    }

    public void setHotelService(HotelService hotelService) {
        this.hotelService = hotelService;
    }

    public Hotel getDataModel() {
        return dataModel;
    }

    public String addHotel() {
        hotelService.addHotel(dataModel);
        return "index?faces-redirect=true";
    }
}

