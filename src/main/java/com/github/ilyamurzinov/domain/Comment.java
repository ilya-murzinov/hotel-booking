package com.github.ilyamurzinov.domain;

import org.hibernate.annotations.ForeignKey;

import javax.persistence.*;

/**
 * @author Ilya Murzinov
 *         Date: 17.06.14
 */
@Entity
@Table(name = "Comment")
public class Comment {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private int id;

    @Id
    @ForeignKey(name = "hotel")
    @Column(name = "hotelId")
    private int hotelId;

    @Column(name = "author")
    private String author;

    @Column(name = "text")
    private String text;

    public int getId() {
        return id;
    }

    public int getHotelId() {
        return hotelId;
    }

    public String getAuthor() {
        return author;
    }

    public String getText() {
        return text;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setText(String text) {
        this.text = text;
    }
}
