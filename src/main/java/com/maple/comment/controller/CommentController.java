package com.maple.comment.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.maple.comment.common.util.AjaxJson;
import com.maple.comment.domain.dto.BatchOpt;
import com.maple.comment.domain.entity.Comment;
import com.maple.comment.implement.CommentService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * @author L
 * @description CommentController
 * @datetime 2024/3/10 10:44
 */
@RestController
@RequestMapping("/prod-api/comment")
@Api(tags = "评论后台管理接口")
public class CommentController {

    @Resource
    CommentService commentService;

    @GetMapping("/page")
    @ApiOperation("评论分页接口")
    public AjaxJson page(@RequestParam Integer pageIndex, @RequestParam Integer pageSize){
        IPage<Comment> page = new Page<>(pageIndex, pageSize);
        page = commentService.page(page);
        return AjaxJson.getSuccessData(page);
    }

    @PostMapping("/delete")
    @ApiOperation("删除评论接口")
    public AjaxJson batchDelete(@RequestBody BatchOpt opt){
        commentService.removeByIds(opt.getIds());
        return AjaxJson.getSuccess("删除成功！");
    }
}
