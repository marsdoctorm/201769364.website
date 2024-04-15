package com.maple.comment.common.satoken;

import cn.dev33.satoken.context.model.SaRequest;
import cn.dev33.satoken.context.model.SaResponse;
import cn.dev33.satoken.router.SaRouteFunction;
import org.springframework.stereotype.Component;

/**
 * @author L
 * @description 校验登录前的拓展类
 * @datetime 2024/3/9 22:37
 */
@Component
public class RouteFunction implements SaRouteFunction {
    @Override
    public void run(SaRequest saRequest, SaResponse saResponse, Object o) {

    }
}
