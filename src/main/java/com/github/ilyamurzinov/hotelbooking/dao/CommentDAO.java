package com.github.ilyamurzinov.hotelbooking.dao;

import com.github.ilyamurzinov.hotelbooking.domain.Comment;

/**
 * Provides methods to create and delete Comments from database
 *
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
public interface CommentDAO {
    void addComment(Comment comment);

    void deleteComment(int id);
}
