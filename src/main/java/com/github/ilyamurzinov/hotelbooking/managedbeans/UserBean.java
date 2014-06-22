package com.github.ilyamurzinov.hotelbooking.managedbeans;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
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
        return SecurityContextHolder.getContext().getAuthentication()
                instanceof AnonymousAuthenticationToken;
    }

    public boolean isUser() {
        return !isGuest();
    }

    public boolean isAdmin() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            for (GrantedAuthority authority : auth.getAuthorities()) {
                if (authority.getAuthority().equals("ROLE_ADMIN")) {
                    return true;
                }
            }
        }
        return false;
    }

    public String getUserName() {
        String name = "guest";
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            name = auth.getName();
        }
        return name;
    }
}
