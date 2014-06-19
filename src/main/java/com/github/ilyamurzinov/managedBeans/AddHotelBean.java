package com.github.ilyamurzinov.managedBeans;

import com.github.ilyamurzinov.domain.Hotel;
import com.github.ilyamurzinov.service.HotelService;

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
        return dataModel != null ? dataModel : (dataModel = new Hotel());
    }

    public String addHotel() {
        hotelService.addHotel(dataModel);
        return "index";
    }
}

