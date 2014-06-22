package com.github.ilyamurzinov.hotelbooking.managedbeans;

import com.github.ilyamurzinov.hotelbooking.domain.Hotel;
import com.github.ilyamurzinov.hotelbooking.service.HotelService;
import org.primefaces.model.chart.PieChartModel;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.ViewScoped;
import java.io.Serializable;

/**
 * @author Ilya Murzinov
 *         Date: 22.06.14
 */
@ManagedBean
@ViewScoped
public class ChartBean implements Serializable {
    @ManagedProperty(value = "#{hotelServiceImpl}")
    private HotelService hotelService;

    private PieChartModel pieModel;

    @PostConstruct
    public void init() {
        createPieModel();
    }

    public PieChartModel getPieModel() {
        return pieModel;
    }

    public HotelService getHotelService() {
        return hotelService;
    }

    public void setHotelService(HotelService hotelService) {
        this.hotelService = hotelService;
    }

    private void createPieModel() {
        pieModel = new PieChartModel();
        for (Hotel h : hotelService.listHotel()) {
            if (h.getComments().size() != 0) {
                pieModel.set(h.getName(), h.getComments().size());
            }
        }
    }
}
