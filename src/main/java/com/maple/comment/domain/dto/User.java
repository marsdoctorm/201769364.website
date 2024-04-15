package com.maple.comment.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

@Data
public class User implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * id，自增主键
     */
     @ApiModelProperty(value = "主键id", example = "1")
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

}

