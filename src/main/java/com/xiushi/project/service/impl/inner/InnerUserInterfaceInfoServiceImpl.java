package com.xiushi.project.service.impl.inner;

import com.xiushi.project.service.UserInterfaceInfoService;
import com.xiushi.xiushicommon.service.InnerUserInterfaceInfoService;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;

@DubboService
public class InnerUserInterfaceInfoServiceImpl implements InnerUserInterfaceInfoService {

    @Resource
    private UserInterfaceInfoService userInterfaceInfoService;

    @Override
    public boolean invokeCount(long interfaceInfoId, long userId) {
        // 调用注入的 UserInterfaceInfoService 的 invokeCount 方法
        return userInterfaceInfoService.invokeCount(interfaceInfoId, userId);
    }
}
