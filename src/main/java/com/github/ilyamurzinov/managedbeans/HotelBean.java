package com.github.ilyamurzinov.managedbeans;

import com.github.ilyamurzinov.domain.Comment;
import com.github.ilyamurzinov.domain.Hotel;
import com.github.ilyamurzinov.service.CommentService;
import com.github.ilyamurzinov.service.HotelService;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;

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
    @ManagedProperty(value = "#{commentServiceImpl}")
    private CommentService commentService;
    @ManagedProperty(value = "#{userBean}")
    private UserBean user;
    private int id;
    private Hotel hotel;
    private List<Comment> comments;
    private Comment commentModel = new Comment();

    public Comment getCommentModel() {
        return commentModel;
    }

    public void setCommentModel(Comment commentModel) {
        this.commentModel = commentModel;
    }

    public void setHotelService(HotelService hotelService) {
        this.hotelService = hotelService;
    }

    public void setCommentService(CommentService commentService) {
        this.commentService = commentService;
    }

    public void setUser(UserBean user) {
        this.user = user;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Hotel getHotel() {
        if (hotel == null) {
            hotel = hotelService.getHotel(id);
        }
        return hotel;
    }

    public int getId() {
        return id;
    }

    public String updateHotel() {
        hotelService.updateHotel(getHotel());
        return "hotel?id=" + id + "&faces-redirect=true";
    }

    public String deleteHotel() {
        hotelService.removeHotel(getHotel().getId());
        return "index?faces-redirect=true";
    }

    public String addComment() {
        Comment comment = getCommentModel();
        comment.setHotel(getHotel());
        if (user.isUser()) {
            comment.setAuthor(user.getUserName());
        }
        commentService.addComment(comment);
        return "hotel?id=" + id + "&faces-redirect=true";
    }

    public String deleteComment(int id) {
        commentService.deleteComment(id);
        return "hotel?id=" + this.id + "&faces-redirect=true";
    }
}
