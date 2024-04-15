package com.maple.comment.domain.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * (SysUser)表实体类
 *
 * @author COMP208
 * @since 2024-04-04
 */
@Data
//@TableName(value = "sys_user")
public class SysUser implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * id，自增主键
     */
    @TableId(type = IdType.AUTO)
    // @ApiModelProperty(value = "主键id", example = "1")
    private Integer id;

    /**
     * admin名称
     */
    @ApiModelProperty(value = "用户名")
    private String username;

    /**
     * 密码
     */
    @ApiModelProperty(value = "密码")
    private String password;

    /**
     * 明文密码
     */
    @ApiModelProperty(value = "明文密码")
    private String pw;

    /**
     * 头像地址
     */
    @ApiModelProperty(value = "头像地址")
    private String avatar;
}

