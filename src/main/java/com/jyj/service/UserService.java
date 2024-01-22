package com.jyj.service;

import com.jyj.po.User;

/**
 * Created by JiaYuJie on 2024/01/15.
 */
public interface UserService {

    User checkUser(String username, String password);
}
