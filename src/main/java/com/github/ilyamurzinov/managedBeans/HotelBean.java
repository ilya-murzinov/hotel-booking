package com.github.ilyamurzinov.managedBeans;

import com.github.ilyamurzinov.domain.Comment;
import com.github.ilyamurzinov.domain.Hotel;
import com.github.ilyamurzinov.service.HotelService;

import javax.faces.bean.*;
import java.util.List;

/**
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
@ManagedBean(name = "hotelBean")
@ViewScoped
public class HotelBean {
    @ManagedProperty(value = "#{hotelServiceImpl}")
    private HotelService hotelService;
    private int id;
    private Hotel hotel;
    private List<Comment> comments;

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public void setHotelService(HotelService hotelService) {
        this.hotelService = hotelService;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Hotel getHotel() {
        return hotel = hotelService.getHotel(id);
    }

    public HotelService getHotelService() {
        return hotelService;
    }

    public int getId() {
        return id;
    }

    public String addHotel() {
        hotelService.addHotel(getHotel());
        return "index";
    }

    public String updateHotel() {
        return "";
    }

    public String delete() {
        hotelService.removeHotel(getHotel().getId());
        return "index";
    }
}
