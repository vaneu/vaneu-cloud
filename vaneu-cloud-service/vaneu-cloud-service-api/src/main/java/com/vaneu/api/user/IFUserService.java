package com.vaneu.api.user;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vaneu.dto.UserDto;

/**
 * @ClassName: IUserService.java
 * @Description: TODO()
 * @author vaneu
 * @date 2020-9-1 0:05:40
 * @version V1.0
*/
@FeignClient(name = "vaneu-cloud-service-user")
public interface IFUserService {

	@RequestMapping("/v1/user/get/{id}")
	public UserDto getUser(@PathVariable long id);
}
