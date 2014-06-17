package com.github.ilyamurzinov.dao;

import com.github.ilyamurzinov.domain.Comment;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
@Component
public class CommentDAOImpl implements CommentDAO {
    @Override
    public List<Comment> listComments(int hotelId) {
        return null;
    }

    @Override
    public void addComment(Comment comment) {

    }

    @Override
    public void deleteComment(int id) {

    }
}
