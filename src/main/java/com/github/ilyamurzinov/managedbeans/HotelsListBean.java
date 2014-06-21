package com.github.ilyamurzinov.managedbeans;

import com.github.ilyamurzinov.domain.Hotel;
import com.github.ilyamurzinov.service.HotelService;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import java.util.List;

/**
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
@ManagedBean(name = "hotelsListViewBean")
@ViewScoped
public class HotelsListBean {
    @ManagedProperty(value = "#{hotelServiceImpl}")
    private HotelService hotelService;
    @SuppressWarnings("usused")
    private List<Hotel> list;
    @SuppressWarnings("usused")
    private int count;

    public HotelService getHotelService() {
        return hotelService;
    }

    public void setHotelService(HotelService hotelService) {
        this.hotelService = hotelService;
    }

    public List<Hotel> getList() {
        return hotelService.listHotel();
    }

    public int getCount() {
        return hotelService.listHotel().size();
    }
}
