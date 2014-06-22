package com.github.ilyamurzinov.hotelbooking.dao;

import com.github.ilyamurzinov.hotelbooking.domain.Comment;

/**
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
public interface CommentDAO {
    void addComment(Comment comment);

    void deleteComment(int id);
}
