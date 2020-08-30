package com.vaneu.order.web.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName: FUserService.java
 * @Description: TODO()
 * @author vaneu
 * @date 2020-8-28 10:46:25
 * @version V1.0
*/

@FeignClient(name = "service-user")
public interface FUserService {

	@RequestMapping("/v1/user/get/{id}")
	public String getUser(@PathVariable long id);
}
