package com.vaneu.order.service.impl;

import com.vaneu.order.domain.Order;
import com.vaneu.order.mapper.OrderMapper;
import com.vaneu.order.service.IOrderService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * <p>订单附件表 服务实现类</p>
 * @author vaneu
 * @since 2020-08-29
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class OrderServiceImpl extends ServiceImpl<OrderMapper, Order> implements IOrderService {

}
