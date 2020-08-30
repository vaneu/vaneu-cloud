package com.vaneu.order.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.baomidou.mybatisplus.extension.plugins.OptimisticLockerInterceptor;
import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;

/**
 * @ClassName: MybatisPlusConfig
 * @Description: TODO(Mybatis-Plus配置更新)
 * @author vaneu
 * @date 2020-8-30 0:36:09
 */
@Configuration
@MapperScan("com.vaneu.order.mapper")
public class MybatisPlusConfig {

	/** 分页插件 */
	@Bean
	public PaginationInterceptor paginationInterceptor() {
		return new PaginationInterceptor();
	}

	/**
	 * @Title: optimisticLockerInterceptor
	 * @Description: TODO(乐观锁)
	 * @return OptimisticLockerInterceptor
	 */
	@Bean
	public OptimisticLockerInterceptor optimisticLockerInterceptor() {
		return new OptimisticLockerInterceptor();
	}
}