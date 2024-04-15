package com.maple.comment;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author COMP208
 * @since 2024-03-24
 */
@SpringBootApplication
@MapperScan("com.maple.comment.mapper")
public class comment {
    public static void main(String[] args) {
        SpringApplication.run(comment.class, args);
    }
}
