package com.github.ilyamurzinov.hotelbooking.service;

import com.github.ilyamurzinov.hotelbooking.domain.Comment;

/**
 * Controls transactions to use
 * {@link com.github.ilyamurzinov.hotelbooking.dao.CommentDAO}
 * with {@link org.springframework.orm.hibernate3.HibernateTransactionManager}
 *
 * @author Ilya Murzinov
 *         Date: 16.06.14
 */
public interface CommentService {
    void addComment(Comment comment);

    void deleteComment(int id);
}
