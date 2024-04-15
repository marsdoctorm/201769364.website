package com.maple.comment.controller;

import com.maple.comment.common.util.AjaxJson;
import com.maple.comment.domain.dto.LoginBody;
import com.maple.comment.implement.SysUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 用户管理
 *
 * @author COMP208
 * @since 2024-04-04
 */
@RestController
@RequestMapping("/prod-api/user")
@Api(value = "user", tags = "用户管理模块")
public class SysUserController {

    @Resource
    private SysUserService userService;

    /**
     * admin登录
     *
     * @param loginBody 登录信息
     * @return 登录状态
     */
    @PostMapping("/login")
    @ApiOperation("登录")
    public AjaxJson login(@RequestBody LoginBody loginBody) {
        String username = loginBody.getUsername();
        String password = loginBody.getPassword();
        // 判断用户名称和密码的合法性
        if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
            return AjaxJson.getError("账号或密码不能为空!");
        }
        return userService.login(username, password);
    }

    /**
     * 根据token获取用户信息
     *
     * @param token 令牌
     * @return 用户信息
     */
    @GetMapping("/info")
    @ApiOperation("根据token获取用户信息")
    public AjaxJson getInfo(String token) {
        if (StringUtils.isEmpty(token)) {
            return AjaxJson.getError("token无效!");
        }
        return userService.getInfo(token);
    }

    /**
     * 退出登录
     *
     * @return 登出
     */
    @PostMapping("/logout")
    @ApiOperation("登出")
    public AjaxJson logout() {
        return userService.logout();
    }

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param user 查询实体
     * @return 所有数据
     */

}

