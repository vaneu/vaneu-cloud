package com.vaneu.api.order;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.vaneu.dto.OrderDto;

/**
 * @ClassName: IOrderService.java
 * @Description: TODO()
 * @author vaneu
 * @date 2020-9-1 0:06:02
 * @version V1.0
*/
@FeignClient(name = "vaneu-cloud-service-order")
public interface IFOrderService {

	@GetMapping("/v1/order/get/{id}")
	public OrderDto getOrder(@PathVariable long id);
}
