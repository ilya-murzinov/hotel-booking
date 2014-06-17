package com.github.ilyamurzinov;

import com.github.ilyamurzinov.service.CommentService;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;

/**
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
@ManagedBean(name = "contactsProvider")
@SessionScoped
public class CommentsProvider {
    @ManagedProperty(value = "#{commentServiceImpl}")
    private CommentService commentService;

    public CommentService getCommentService() {
        return commentService;
    }

    public void setCommentService(CommentService commentService) {
        this.commentService = commentService;
    }
}
