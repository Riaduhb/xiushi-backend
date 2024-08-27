package com.xiushi.xiuapiinterface;

import com.xiushi.xiuapiclientsdk.client.XiuApiClient;
import com.xiushi.xiuapiclientsdk.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@SpringBootTest
class XiuapiInterfaceApplicationTests {

    // 注入一个名为xiuApiClient的Bean
    @Resource
    private XiuApiClient xiuApiClient;
    // 表示这是一个测试方法

    @Test
    void contextLoads() {
        // 调用xiuApiClient的getNameByGet方法，并传入参数"xiushi"，将返回的结果赋值给result变量
        String result = xiuApiClient.getNameByGet("xiushi");
        // 创建一个User对象
        User user = new User();
        // 设置User对象的username属性为"xiushi"
        user.setUsername("朽诗");
        // 调用xiuApiClient的getUserNameByPost方法，并传入user对象作为参数，将返回的结果赋值给usernameByPost变量
        String usernameByPost = xiuApiClient.getUserNameByPost(user);
        // 打印result变量的值
        System.out.println(result);
        // 打印usernameByPost变量的值
        System.out.println(usernameByPost);
    }

}