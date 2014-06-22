package com.github.ilyamurzinov.hotelbooking.managedbeans;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 * Contains information about current user.
 *
 * Provides information to index.xhtml and hotel.xhtml using
 * {@link org.springframework.security.core.context.SecurityContextHolder}
 *
 * @author Ilya Murzinov
 *         Date: 21.06.14
 */
@ManagedBean
@SessionScoped
public class UserBean {
    /**
     * @return true if current user is guest
     */
    public boolean isGuest() {
        return SecurityContextHolder.getContext().getAuthentication()
                instanceof AnonymousAuthenticationToken;
    }
    /**
     * @return true if current user is authenticated user
     */
    public boolean isUser() {
        return !isGuest();
    }

    /**
     * @return true if current user har ROLE_ADMIN role
     */
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

    /**
     * @return current user's name or "guest" for anonymous user
     */
    public String getUserName() {
        String name = "guest";
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            name = auth.getName();
        }
        return name;
    }
}
