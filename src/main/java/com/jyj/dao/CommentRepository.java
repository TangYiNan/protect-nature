package com.jyj.dao;

import com.jyj.po.Comment;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by JiaYuJie on 2024/01/22.
 */
public interface CommentRepository extends JpaRepository<Comment,Long>{


    List<Comment> findByBlogIdAndParentCommentNull(Long blogId, Sort sort);
}
