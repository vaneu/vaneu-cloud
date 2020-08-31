package com.vaneu.user.web.controller;


import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.vaneu.api.order.IFOrderService;
import com.vaneu.api.user.IFUserService;
import com.vaneu.common.Result;
import com.vaneu.dto.UserDto;
import com.vaneu.user.domain.User;
import com.vaneu.user.service.IUserService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;

/**
 * <p>
   * 用户表 前端控制器
 * </p>
 * @author vaneu
 * @since 2020-08-29
 */
@Slf4j
@Api(tags = "用户")
@RestController
@RequestMapping("/v1/user")
public class UserController implements IFUserService{

	@Autowired IUserService userService;
	@Autowired IFOrderService orderService;
	
	@ApiOperation(value = "测试分页", notes = "测试分页")
    @ApiImplicitParams({
    	@ApiImplicitParam(name = "current", value="第几页", required = true, dataTypeClass = Long.class),
    	@ApiImplicitParam(name = "size", value="每页多少行", required = true, dataTypeClass = Long.class),
    })
	@PostMapping("/list")
	public Result<IPage<User>> getPage(long current, long size){
		Page<User> page = new Page<>(current, size);
		log.debug(orderService.getOrder(1).toString());
		return new Result<IPage<User>>().success(userService.page(page));
	}
	
	@ApiOperation(value = "获取用户")
	@ApiImplicitParams({
    	@ApiImplicitParam(name = "id", value="编号", required = true, dataTypeClass = Long.class),
    })
	@GetMapping("/get/{id}")
	public UserDto getUser(@PathVariable long id) {
		User user = userService.getById(id);
		UserDto userDto = new UserDto();
		BeanUtils.copyProperties(user, userDto);
		return userDto;
	}
}

