package com.maple.comment.implement.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.maple.comment.domain.entity.Comment;
import com.maple.comment.mapper.CommentMapper;
import com.maple.comment.implement.CommentService;
import org.springframework.stereotype.Service;

/**
 * @author L
 * @description CommentServiceImpl
 * @datetime 2024/3/10 10:48
 */
@Service
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {
}
