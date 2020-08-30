package com.vaneu.user.web.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName: FOrderService.java
 * @Description: TODO()
 * @author vaneu
 * @date 2020-8-28 10:46:25
 * @version V1.0
 */

@FeignClient(name = "service-order")
public interface FOrderService {

	@RequestMapping("/v1/order/get/{id}")
	public String getOrder(@PathVariable long id);
}
