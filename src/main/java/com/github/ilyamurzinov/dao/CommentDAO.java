package com.github.ilyamurzinov.dao;

import com.github.ilyamurzinov.domain.Comment;

import java.util.List;

/**
 * @author Ilya Murzinov
 *         Date: 18.06.14
 */
public interface CommentDAO {
    void addComment(Comment comment);

    void deleteComment(int id);
}
