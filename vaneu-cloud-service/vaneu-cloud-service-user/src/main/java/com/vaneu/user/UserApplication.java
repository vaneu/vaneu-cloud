package com.vaneu.user;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

import com.alibaba.nacos.api.config.annotation.NacosConfigurationProperties;

/**
 * @ClassName: AccountApplication
 * @Description: TODO()
 * @author vaneu
 * @date 2020-8-28 9:35:24
 */
@EnableFeignClients
@NacosConfigurationProperties(autoRefreshed = true, dataId = "vaneu-cloud-service-user-dev.yaml")
@EnableDiscoveryClient
@SpringBootApplication
public class UserApplication {

	public static void main(String[] args) {
		SpringApplication.run(UserApplication.class, args);
	}

}
