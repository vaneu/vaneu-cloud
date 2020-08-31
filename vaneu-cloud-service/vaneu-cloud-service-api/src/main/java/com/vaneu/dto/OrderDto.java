package com.vaneu.dto;

import java.io.Serializable;
import java.time.LocalDateTime;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>订单附件表</p>
 * @author vaneu
 * @since 2020-08-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="OrderModel对象", description="订单附件表")
public class OrderDto implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "id,自增")
    private Long id;

    @ApiModelProperty(value = "货主id")
    private Long consignorId;

    @ApiModelProperty(value = "订单编号")
    private String orderCode;

    @ApiModelProperty(value = "图片类型：1.订单货品备注图片，2.订单回单图片")
    private Integer imgType;

    @ApiModelProperty(value = "附件key")
    private String imgKey;

    @ApiModelProperty(value = "附件url")
    private String imgUrl;

    @ApiModelProperty(value = "创建时间")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "修改时间")
    private LocalDateTime updateTime;
}
