package com.maple.comment.implement.impl;

import cn.dev33.satoken.stp.StpUtil;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.crypto.digest.MD5;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.maple.comment.common.util.AjaxJson;
import com.maple.comment.domain.dto.User;
import com.maple.comment.domain.entity.SysUser;
import com.maple.comment.domain.entity.UserInformation;
import com.maple.comment.domain.entity.UserPassWord;
import com.maple.comment.mapper.SysUserMapper;
import com.maple.comment.mapper.UserInformationMapper;
import com.maple.comment.mapper.UserPassWordMapper;
import com.maple.comment.implement.SysUserService;
import com.maple.comment.utils.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/**
 * (SysUser)表服务实现类
 *
 * @author COMP208
 * @since 2024-04-04
 */
@Service("saAdminService")
public class SysUserServiceImpl extends ServiceImpl<SysUserMapper, SysUser> implements SysUserService {

    @Resource
    UserInformationMapper userInformationMapper;
    @Resource
    UserPassWordMapper userPassWordMapper;

    /**
     * admin登录
     *
     * @param username 账号
     * @param password 密码
     * @return 登录信息
     */
    @Override
    public AjaxJson login(String username, String password) {
//        SysUser user = baseMapper.selectOne(Wrappers.<SysUser>lambdaQuery().eq(SysUser::getUsername, username).eq(SysUser::getPw, password));
        UserInformation userInfo = userInformationMapper.selectOne(new QueryWrapper<UserInformation>().eq("username", username));
        if(Objects.isNull(userInfo)){
            return AjaxJson.getError("账号或密码错误!");
        }
        UserPassWord passWord = userPassWordMapper.selectOne(new QueryWrapper<UserPassWord>().eq("uid", userInfo.getId()));
        if(Objects.isNull(passWord)){
            return AjaxJson.getError("账号或密码错误!");
        }
        password = StringUtils.getInstance().getMD5(password);
        if (!password.equals(passWord.getPassword())) {
            return AjaxJson.getError("账号或密码错误!");
        }
        StpUtil.setLoginId(userInfo.getId());
        String token = StpUtil.getTokenValue();
        Map<String, Object> map = new HashMap<>();
        map.put("token", token);
        return AjaxJson.getSuccess("登录成功!", map);
    }

    public String getMD5(String str) {
        return MD5.create().digestHex(str);
    }
    /**
     * 根据token获取用户信息
     *
     * @param token 令牌
     * @return 用户信息
     */
    @Override
    public AjaxJson getInfo(String token) {
        Object loginId = StpUtil.getLoginIdByToken(token);
//        SysUser user = baseMapper.selectById((Serializable) loginId);
        UserInformation userInfo = userInformationMapper.selectById((Serializable) loginId);
        if(Objects.isNull(userInfo)){
            return AjaxJson.getError("token无效!");
        }
        UserPassWord passWord = userPassWordMapper.selectOne(new QueryWrapper<UserPassWord>().eq("uid", userInfo.getId()));
        if(Objects.isNull(passWord)){
            return AjaxJson.getError("token无效!");
        }
        // 校验token
        User user = BeanUtil.copyProperties(userInfo, User.class);
        user.setPassword(passWord.getPassword());
        return AjaxJson.getSuccessData(user);
    }

    /**
     * 退出登录
     *
     * @return 是否退出成功
     */
    @Override
    public AjaxJson logout() {
        StpUtil.logout();
        return AjaxJson.getSuccess("登出成功!");
    }
}

