package com.github.ilyamurzinov.service;

import com.github.ilyamurzinov.dao.CommentDAO;
import com.github.ilyamurzinov.domain.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
@Component
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentDAO commentDAO;

    @Override
    public void addComment(Comment comment) {
        commentDAO.addComment(comment);
    }

    @Override
    public void deleteComment(int id) {
        commentDAO.deleteComment(id);
    }
}
