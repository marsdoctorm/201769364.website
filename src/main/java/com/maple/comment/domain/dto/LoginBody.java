package com.maple.comment.domain.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @author COMP208
 * @since 2024-04-04
 */
@Data
public class LoginBody implements Serializable {
    private static final long serialVersionUID = 1L;

    private String username;
    private String password;
}
