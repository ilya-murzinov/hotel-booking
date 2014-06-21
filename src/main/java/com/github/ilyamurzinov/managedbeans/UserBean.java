package com.github.ilyamurzinov.managedbeans;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 * @author Ilya Murzinov
 *         Date: 21.06.14
 */
@ManagedBean(name = "userBean")
@SessionScoped
public class UserBean {
    public boolean isGuest() {
        return SecurityContextHolder.getContext()
                .getAuthentication().getPrincipal().equals("guest");
    }

    public boolean isUser() {
        return !isGuest();
    }

    public boolean isAuthor(String author) {
        return !isGuest();
    }

    public String getUserName() {
        String name = "none";
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            name = auth.getName();
        }
        return name;
    }
}
