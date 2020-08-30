package com.vaneu.order.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.Version;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>订单附件表</p>
 * @author vaneu
 * @since 2020-08-29
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("t_order")
@ApiModel(value="OrderModel对象", description="订单附件表")
public class Order implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "id,自增")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "货主id")
    @TableField("consignor_id")
    private Long consignorId;

    @ApiModelProperty(value = "订单编号")
    @TableField("order_code")
    private String orderCode;

    @ApiModelProperty(value = "图片类型：1.订单货品备注图片，2.订单回单图片")
    @TableField("img_type")
    private Integer imgType;

    @ApiModelProperty(value = "附件key")
    @TableField("img_key")
    private String imgKey;

    @ApiModelProperty(value = "附件url")
    @TableField("img_url")
    private String imgUrl;

    @ApiModelProperty(value = "创建时间")
    @TableField("create_time")
    private LocalDateTime createTime;

    @ApiModelProperty(value = "修改时间")
    @TableField("update_time")
    private LocalDateTime updateTime;

    @ApiModelProperty(value = "版本")
    @TableField("version")
    @Version
    private Long version;


}
