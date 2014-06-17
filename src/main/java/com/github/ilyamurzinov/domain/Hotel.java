package com.github.ilyamurzinov.domain;

import javax.persistence.*;

@Entity
@Table(name = "Hotel")
public class Hotel {
    @Id
    @Column(name = "Id")
    @GeneratedValue
    private long id;

    @Column(name = "Name")
    private String name;

    @Column(name = "Address")
    private String address;

    @Column(name = "Price")
    private String price;

    @Column(name = "Phone")
    private String phone;

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getPrice() {
        return price;
    }

    public String getPhone() {
        return phone;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
