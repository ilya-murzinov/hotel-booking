package com.github.ilyamurzinov.service;

import com.github.ilyamurzinov.domain.Comment;

import java.util.List;

/**
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
public interface CommentService {
    List<Comment> listComments(int hotelId);

    void addComment(Comment comment);

    void deleteComment(int id);
}
