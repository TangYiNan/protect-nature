package com.jyj.service;

import com.jyj.dao.UserRepository;
import com.jyj.po.User;
import com.jyj.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by JiaYuJie on 2024/01/15.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User checkUser(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, MD5Utils.code(password));
        return user;
    }
}
