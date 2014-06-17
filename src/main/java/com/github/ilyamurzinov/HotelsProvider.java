package com.github.ilyamurzinov;

import com.github.ilyamurzinov.domain.Hotel;
import com.github.ilyamurzinov.service.HotelService;
import org.springframework.beans.factory.annotation.Required;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import java.util.List;
import java.util.Map;

/**
 * @author Ilya Murzinov
 *         Date: 17.06.14
 */
@ManagedBean(name = "hotelsProvider")
@SessionScoped
public class HotelsProvider {
    @ManagedProperty(value = "#{hotelServiceImpl}")
    private HotelService hotelService;

    private String name;
    private String address;
    private String phone;
    private String price;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public List<Hotel> listHotels() {
        return hotelService.listHotel();
    }

    public Hotel getHotelCurrent() {
        Map<String,String> params =
                FacesContext.getCurrentInstance()
                        .getExternalContext().getRequestParameterMap();
        String id = params.get("id");
        return hotelService.getHotel(Integer.parseInt(id));
    }

    public String addHotel() {
        Hotel hotel = new Hotel();
        hotel.setName(getName());
        hotel.setAddress(getAddress());
        hotel.setPhone(getPhone());
        hotel.setPrice(getPrice());
        hotelService.addHotel(hotel);
        return "index";
    }

    public HotelService getHotelService() {
        return hotelService;
    }

    public void setHotelService(HotelService hotelService) {
        this.hotelService = hotelService;
    }
}
