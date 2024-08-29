package com.xiushi.xiuapiinterface.controller;
import com.xiushi.xiuapiclientsdk.utils.SignUtils;
import com.xiushi.xiuapiclientsdk.model.User;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

/**
 * 名称API
 *
 * @author DHB
 */
@RestController
@RequestMapping("name")
public class NameController {
    @GetMapping("/")
    public String getNameByGet(String name) {
        return "GET 你的名字是" + name;
    }

    @PostMapping("/")
    public String getNameByPost(@RequestParam String name) {
        return "POST 你的名字是" + name;
    }

    @PostMapping("/user")
    public String getUserNameByPost(@RequestBody User user, HttpServletRequest request) {
        // 从请求头中获取参数
        String accessKey = request.getHeader("accessKey");
        String nonce = request.getHeader("nonce");
        String timestamp = request.getHeader("timestamp");
        String sign = request.getHeader("sign");
        String body = request.getHeader("body");

        try {
            body = URLDecoder.decode(body,"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        // todo 实际情况应该是去数据库中查是否已分配给用户
        if (!accessKey.equals("xiushi")) {
            throw new RuntimeException("无权限");
        }
        // 校验随机数，模拟一下，直接判断nonce是否大于10000
        if (Long.parseLong(nonce) > 10000) {
            throw new RuntimeException("无权限");
        }

        // todo 时间和当前时间不能超过5分钟
//        if (timestamp) {}

        // todo 实际情况中是从数据库中查出 secretKey
        String serverSign = SignUtils.genSign(body, "abcdefgh");
        // 如果生成的签名不一致，则抛出异常，并提示"无权限"
        if (!sign.equals(serverSign)) {
            throw new RuntimeException("无权限");
        }
        String result = "POST 用户名字是" + user.getUsername();
        return result;
    }

}
