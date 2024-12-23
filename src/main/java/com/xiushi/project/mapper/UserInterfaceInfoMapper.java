package com.xiushi.project.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xiushi.xiushicommon.model.entity.UserInterfaceInfo;

import java.util.List;

/**
* @author 86130
* @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Mapper
* @createDate 2024-08-29 15:06:54
* @Entity com.xiushi.project.model.entity.UserInterfaceInfo
*/
public interface UserInterfaceInfoMapper extends BaseMapper<UserInterfaceInfo> {
    //select interfaceInfoId, sum(totalNum) as totalNum from user_interface_info group by interfaceInfoId order by totalNum desc limit 3;
    List<UserInterfaceInfo> listTopInvokeInterfaceInfo(int limint);
}




