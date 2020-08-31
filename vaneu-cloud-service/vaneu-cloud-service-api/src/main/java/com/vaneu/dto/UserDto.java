package com.vaneu.dto;

import java.io.Serializable;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>用户表</p>
 * @author vaneu
 * @since 2020-08-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="UserModel对象", description="用户表")
public class UserDto implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "用户编号")
    private Integer id;

    @ApiModelProperty(value = "工号")
    private String account;

    @ApiModelProperty(value = "用户密码")
    private String password;

    @ApiModelProperty(value = "姓名")
    private String username;

    @ApiModelProperty(value = "用户电话")
    private String phone;

    @ApiModelProperty(value = "性别")
    private String gender;
}
