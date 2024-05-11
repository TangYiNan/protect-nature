package com.jyj;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ProtectNatureApplication {

	public static void main(String[] args) {

		SpringApplication.run(ProtectNatureApplication.class, args);
		try {
			Runtime.getRuntime().exec("cmd   /c   start   http://127.0.0.1:8080");//可以指定自己的路径
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
