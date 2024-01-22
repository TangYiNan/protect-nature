package com.jyj.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by JiaYuJie on 2024/01/24.
 */
@Controller
public class AboutShowController {

    @GetMapping("/about")
    public String about() {
        return "about";
    }
}
