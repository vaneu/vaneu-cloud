package com.vaneu.gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

import com.alibaba.nacos.api.config.annotation.NacosConfigurationProperties;

/**
 * @ClassName: GatewayApplication.java
 * @Description: TODO()
 * @author vaneu
 * @date 2020-8-29 19:27:39
 * @version V1.0
*/
@NacosConfigurationProperties(autoRefreshed = true, dataId = "vaneu-cloud-gateway-dev.yaml")
@EnableDiscoveryClient
@SpringBootApplication
public class GatewayApplication {

	public static void main(String[] args) {
		SpringApplication.run(GatewayApplication.class, args);
	}

}
