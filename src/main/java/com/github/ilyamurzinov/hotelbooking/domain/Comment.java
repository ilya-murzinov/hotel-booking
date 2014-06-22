package com.github.ilyamurzinov.hotelbooking.domain;

import javax.persistence.*;

/**
 * @author Ilya Murzinov
 *         Date: 17.06.14
 */
@Entity
@Table(name = "comment")
public class Comment {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private int id;

    @ManyToOne
    @JoinColumn(name = "hotelId")
    private Hotel hotel;

    @Column(name = "author")
    private String author;

    @Column(name = "text")
    private String text;

    public int getId() {
        return id;
    }

    public String getAuthor() {
        return author;
    }

    public String getText() {
        return text;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setId(int id) {
        this.id = id;
    }
}
