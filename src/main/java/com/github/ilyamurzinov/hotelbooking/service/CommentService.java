package com.github.ilyamurzinov.hotelbooking.service;

import com.github.ilyamurzinov.hotelbooking.domain.Comment;

/**
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
public interface CommentService {
    void addComment(Comment comment);

    void deleteComment(int id);
}
