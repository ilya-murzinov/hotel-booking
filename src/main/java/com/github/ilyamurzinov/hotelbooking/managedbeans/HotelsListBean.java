package com.github.ilyamurzinov.hotelbooking.managedbeans;

import com.github.ilyamurzinov.hotelbooking.domain.Hotel;
import com.github.ilyamurzinov.hotelbooking.service.HotelService;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import java.util.List;

/**
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
@ManagedBean
@ViewScoped
public class HotelsListBean {
    @ManagedProperty(value = "#{hotelServiceImpl}")
    private HotelService hotelService;
    private List<Hotel> list;
    private int count;
    private String searchCriteria;

    public HotelService getHotelService() {
        return hotelService;
    }

    public void setHotelService(HotelService hotelService) {
        this.hotelService = hotelService;
    }

    public List<Hotel> getList() {
        if (list == null) {
            list = hotelService.listHotel();
        }
        return list;
    }

    public int getCount() {
        return getList().size();
    }

    public String getSearchCriteria() {
        return searchCriteria;
    }

    public void setSearchCriteria(String searchCriteria) {
        this.searchCriteria = searchCriteria;
    }

    public void search() {
        list = hotelService.listHotel(searchCriteria);
    }
}