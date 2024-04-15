package com.maple.comment.domain.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * @author L
 * @description 批量操作
 * @datetime 2024/3/10 14:57
 */
@Data
@ApiModel(value = "批量操作入参")
public class BatchOpt {

    @ApiModelProperty("需要操作的主键集合")
    private List<Integer> ids;

}
