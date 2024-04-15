package com.maple.comment.domain.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @author L
 * @description UserPassWord
 * @datetime 2024/3/10 14:18
 */
@Data
@ApiModel("用户密码")
@TableName(value = "userpassword")
public class UserPassWord implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    @ApiModelProperty(value = "id")
    private Integer id;

    @ApiModelProperty(value = "密码")
    private String password;

    @ApiModelProperty(value = "用户id")
    private Integer uid;

}
