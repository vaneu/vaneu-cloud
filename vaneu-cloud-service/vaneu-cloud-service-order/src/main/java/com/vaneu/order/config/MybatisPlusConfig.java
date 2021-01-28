package com.vaneu.order.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.autoconfigure.ConfigurationCustomizer;
import com.baomidou.mybatisplus.extension.plugins.MybatisPlusInterceptor;
import com.baomidou.mybatisplus.extension.plugins.inner.PaginationInnerInterceptor;

/**
 * @ClassName: MybatisPlusConfig
 * @Description: TODO(Mybatis-Plus配置更新)
 * @author vaneu
 * @date 2020-8-30 0:36:09
 */
@Configuration
@MapperScan("com.vaneu.order.mapper")
public class MybatisPlusConfig {

//	/** 分页插件 */
//	@Bean
//	public PaginationInterceptor paginationInterceptor() {
//		return new PaginationInterceptor();
//	}
//
//	/**
//	 * @Title: optimisticLockerInterceptor
//	 * @Description: TODO(乐观锁)
//	 * @return OptimisticLockerInterceptor
//	 */
//	@Bean
//	public OptimisticLockerInterceptor optimisticLockerInterceptor() {
//		return new OptimisticLockerInterceptor();
//	}

	/**
	 * 新的分页插件,一缓和二缓遵循mybatis的规则,需要设置 MybatisConfiguration#useDeprecatedExecutor
	 * = false 避免缓存出现问题
	 */
	@Bean
	public MybatisPlusInterceptor mybatisPlusInterceptor() {
		MybatisPlusInterceptor interceptor = new MybatisPlusInterceptor();
		interceptor.addInnerInterceptor(new PaginationInnerInterceptor(DbType.MYSQL));
		return interceptor;
	}

	@SuppressWarnings("deprecation")
	@Bean
	public ConfigurationCustomizer configurationCustomizer() {
		return configuration -> configuration.setUseDeprecatedExecutor(false);
	}
}