package com.github.ilyamurzinov.hotelbooking.dao;

import com.github.ilyamurzinov.hotelbooking.domain.Comment;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
@Repository
public class CommentDAOImpl implements CommentDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addComment(Comment comment) {
        sessionFactory.getCurrentSession().save(comment);
    }

    @Override
    public void deleteComment(int id) {
        Comment comment = (Comment) sessionFactory.getCurrentSession().get(Comment.class, id);
        if (comment != null) {
            sessionFactory.getCurrentSession().delete(comment);
        }
    }
}
