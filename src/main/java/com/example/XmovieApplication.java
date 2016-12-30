package com.example;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.example.**.mapper")
public class XmovieApplication {
	public static final Logger LOGGER = LoggerFactory.getLogger(XmovieApplication.class);
	public static void main(String[] args) {
		SpringApplication.run(XmovieApplication.class, args);
		LOGGER.info("Xmovie 启动成功！");
	}
}
