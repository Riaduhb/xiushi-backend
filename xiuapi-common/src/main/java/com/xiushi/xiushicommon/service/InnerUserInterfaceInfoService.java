package com.xiushi.xiushicommon.service;


import com.xiushi.xiushicommon.model.entity.UserInterfaceInfo;

/**
*
*/
public interface InnerUserInterfaceInfoService  {
    /**
     * 调用接口统计
     * @param interfaceInfoId
     * @param userId
     * @return
     */
    boolean invokeCount(long interfaceInfoId,long userId);
}
