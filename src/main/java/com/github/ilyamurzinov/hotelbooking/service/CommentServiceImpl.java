package com.github.ilyamurzinov.hotelbooking.service;

import com.github.ilyamurzinov.hotelbooking.dao.CommentDAO;
import com.github.ilyamurzinov.hotelbooking.domain.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * Controls transactions to use
 * {@link com.github.ilyamurzinov.hotelbooking.dao.CommentDAO}
 * with {@link org.springframework.orm.hibernate3.HibernateTransactionManager}
 *
 * @author Ilya Murzinov
 *         Date: 16.06.14
 */
@Component
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentDAO commentDAO;

    @Transactional
    @Override
    public void addComment(Comment comment) {
        commentDAO.addComment(comment);
    }

    @Transactional
    @Override
    public void deleteComment(int id) {
        commentDAO.deleteComment(id);
    }
}
