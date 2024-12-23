package com.xiushi.project.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.xiushi.xiushicommon.model.entity.InterfaceInfo;

/**
* @author 86130
* @description 针对表【interface_info(接口信息)】的数据库操作Service
* @createDate 2024-08-21 15:38:35
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {
    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);

}
