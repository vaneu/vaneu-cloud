package com.vaneu.user.service.impl;

import com.vaneu.user.domain.User;
import com.vaneu.user.mapper.UserMapper;
import com.vaneu.user.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * <p>用户表 服务实现类</p>
 * @author vaneu
 * @since 2020-08-29
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

}
