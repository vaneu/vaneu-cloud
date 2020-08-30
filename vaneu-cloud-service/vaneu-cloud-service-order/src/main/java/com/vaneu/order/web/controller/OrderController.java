package com.vaneu.order.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.vaneu.common.Result;
import com.vaneu.order.domain.Order;
import com.vaneu.order.service.IOrderService;
import com.vaneu.order.web.feign.FUserService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;

/**
 * <p>
 * 订单附件表 前端控制器
 * </p>
 * @author vaneu
 * @since 2020-08-29
 */
@Slf4j
@Api(tags = "订单")
@RestController
@RequestMapping("/v1/order")
public class OrderController {

	@Autowired IOrderService orderService;
	@Autowired FUserService userService;
	
	@ApiOperation("提交订单")
	@PostMapping("/add")
	public Result<String> add(@RequestBody Order order){
		
		if(orderService.save(order)) {
			return new Result<String>().success();
		} else {
			return new Result<String>().fail();
		}
	}
	
	@ApiOperation(value = "测试接口1", notes = "测试Get接口")
    @ApiImplicitParams({
    	@ApiImplicitParam(name = "current", value="第几页", required = true, dataTypeClass = Long.class),
    	@ApiImplicitParam(name = "size", value="每页多少行", required = true, dataTypeClass = Long.class),
    })
	@PostMapping("/list")
	public Result<IPage<Order>> getPage(long current, long size){
		Page<Order> page = new Page<>(current, size);
		log.debug(userService.getUser(5));
		return new Result<IPage<Order>>().success(orderService.page(page));
	}
	
	@GetMapping("/get/{id}")
	public Order getOrder(@PathVariable long id) {
		return orderService.getById(id);
	}
}

