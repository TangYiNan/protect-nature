package com.jyj.dao;

import com.jyj.po.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by JiaYuJie on 2024/01/15.
 */
public interface UserRepository extends JpaRepository<User,Long> {

    User findByUsernameAndPassword(String username, String password);
}
