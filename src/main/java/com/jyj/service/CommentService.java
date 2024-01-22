package com.jyj.service;

import com.jyj.po.Comment;

import java.util.List;

/**
 * Created by JiaYuJie on 2024/01/22.
 */
public interface CommentService {

    List<Comment> listCommentByBlogId(Long blogId);

    Comment saveComment(Comment comment);
}
