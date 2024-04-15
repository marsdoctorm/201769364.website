package com.maple.comment.implement;

import com.baomidou.mybatisplus.extension.service.IService;
import com.maple.comment.common.util.AjaxJson;
import com.maple.comment.domain.entity.SysUser;

/**
 * (SysUser)表服务接口
 *
 * @author COMP208
 * @since 2024-04-04
 */
public interface SysUserService extends IService<SysUser> {

    /**
     * admin登录
     *
     * @param username 账号
     * @param password 密码
     * @return 登录信息
     */
    AjaxJson login(String username, String password);

    /**
     * 根据token获取用户信息
     *
     * @param token 令牌
     * @return 用户信息
     */
    AjaxJson getInfo(String token);

    /**
     * 退出登录
     *
     * @return 是否退出成功
     */
    AjaxJson logout();

    // /**
    //  * 分页模糊查询用户
    //  *
    //  * @param page
    //  * @param user
    //  * @return
    //  */
    // AjaxJson page(Page<SysUser> page, SysUser user);
}

