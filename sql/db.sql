-- 接口信息
create table if not exists xiushiapi.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` varchar(256) not null comment '名称',
    `description` varchar(256) null comment '描述',
    `url` varchar(512) not null comment '接口地址',
    `requestParams` text not null comment '请求参数',
    `requestHeader` text null comment '请求头',
    `responseHeader` text null comment '响应头',
    `status` int default 0 not null comment '接口状态(0-关闭，1-开启)',
    `method` varchar(256) not null comment '请求类型',
    `userId` bigint not null comment '创建人',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
    ) comment '接口信息';

insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('黄昊天', '戴彬', 'www.jerry-wintheiser.io', '孔雨泽', '顾博涛', 0, '孟旭尧', 51111);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('彭修洁', '杜鹭洋', 'www.king-jerde.name', '宋果', '卢明辉', 0, '郑聪健', 31532834);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('顾子涵', '冯君浩', 'www.kerrie-batz.net', '顾雨泽', '宋伟祺', 0, '杜彬', 81435496);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('郭昊天', '许钰轩', 'www.leona-stark.com', '袁航', '陆明辉', 0, '孟浩然', 2292);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('马博涛', '崔浩', 'www.cherry-keebler.org', '丁擎宇', '史健雄', 0, '龚立诚', 4510);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('冯乐驹', '邵修杰', 'www.robby-collins.net', '冯立诚', '刘子骞', 0, '金烨霖', 5250431338);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('段浩宇', '孟浩宇', 'www.sharlene-cummings.org', '徐思', '郝子轩', 0, '薛绍辉', 3);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('黎浩宇', '陆雨泽', 'www.bernard-stokes.biz', '戴彬', '卢智辉', 0, '朱语堂', 319);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('邵擎苍', '侯修洁', 'www.marlana-hand.net', '贺果', '黎弘文', 0, '曾思源', 1870);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('龙越彬', '孙子骞', 'www.rosette-skiles.biz', '王风华', '何文博', 0, '许思远', 72);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('洪笑愚', '傅思源', 'www.joey-lueilwitz.net', '魏黎昕', '傅伟祺', 0, '韩明辉', 19565);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('傅煜城', '邱志强', 'www.alfredia-murazik.org', '谢天磊', '龚锦程', 0, '尹建辉', 53);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('石绍齐', '何思源', 'www.fausto-braun.com', '谭健雄', '莫烨磊', 0, '姚炎彬', 65);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('熊楷瑞', '高浩宇', 'www.peter-wolf.net', '邹弘文', '邵果', 0, '何天磊', 981226);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('曹昊天', '薛越泽', 'www.antonia-trantow.io', '马立诚', '黎子默', 0, '邓鹏涛', 601);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('余弘文', '钟烨伟', 'www.carter-oconnell.io', '段潇然', '夏浩然', 0, '贺博超', 183);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('张立轩', '覃钰轩', 'www.leigha-koch.net', '许俊驰', '丁子轩', 0, '叶晋鹏', 0);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('覃博涛', '史雪松', 'www.jacob-fahey.net', '徐雨泽', '韦鹤轩', 0, '冯鹏飞', 57);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('莫涛', '何凯瑞', 'www.herschel-lind.io', '贾潇然', '杨天磊', 0, '何立轩', 50984);
insert into xiushiapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('白晓啸', '傅修杰', 'www.penni-steuber.info', '侯鸿涛', '林晓啸', 0, '龚泽洋', 198228229);