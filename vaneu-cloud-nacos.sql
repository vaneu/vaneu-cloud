/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : 127.0.0.1:3306
 Source Schema         : vaneu-cloud-nacos

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 28/01/2021 15:03:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS `config_info`;
CREATE TABLE `config_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  `c_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_use` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `effect` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_schema` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfo_datagrouptenant`(`data_id`, `group_id`, `tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info
-- ----------------------------
INSERT INTO `config_info` VALUES (1, 'vaneu-cloud-service-user-dev.yaml', 'DEFAULT_GROUP', 'spring: \r\n  profiles: dev     \r\n  datasource:\r\n    name: druidDataSource\r\n    type: com.alibaba.druid.pool.DruidDataSource\r\n    druid:\r\n      driver-class-name: com.mysql.cj.jdbc.Driver\r\n      url: jdbc:mysql://127.0.0.1:3306/vaneu-cloud-user?useUnicode=true&characterEncoding=UTF-8&serverTimezone=Hongkong\r\n      username: root\r\n      password: 123456\r\n      max-active: 5\r\n      initial-size: 5\r\n      max-wait: 60000\r\n      min-idle: 1\r\n      time-between-eviction-runs-millis: 60000\r\n      min-evictable-idle-time-millis: 300000\r\n      validation-query: select \'x\'\r\n      test-while-idle: true\r\n      test-on-borrow: false\r\n      test-on-return: false\r\n      pool-prepared-statements: true\r\n      max-open-prepared-statements: 50\r\n      max-pool-prepared-statement-per-connection-size: 20\r\n      \r\n      filter:\r\n        stat:\r\n          enabled: true\r\n      stat-view-servlet:\r\n        enabled: true\r\n        login-username: admin\r\n        login-password: vaneu\r\n        \r\nswagger:\r\n  enable: true\r\n\r\nmybatis-plus:\r\n  mapper-locations: classpath:/mapper/**Mapper.xml\r\n  typeAliasesPackage: com.vaneu.user.domain            #实体扫描，多个package用逗号或者分号分隔\r\n      \r\n#actuator\r\nmanagement:\r\n  endpoints:\r\n    web:\r\n      exposure:\r\n        include: \'*\'\r\n\r\nlogging:\r\n  file: vaneu-cloud-service-user.log\r\n  level:\r\n    com.vaneu: debug\r\n    com.alibaba.nacos.client.config.impl: WARN      # 屏蔽Nacos 30秒一次打印信息', '6b5d297315174dabeec1e0b5056e7ba0', '2020-08-31 07:32:40', '2020-08-31 12:20:17', NULL, '127.0.0.1', 'vaneu-cloud-service-user', 'vaneu', '', '', '', 'yaml', '');
INSERT INTO `config_info` VALUES (16, 'vaneu-cloud-service-order-dev.yaml', 'DEFAULT_GROUP', 'spring: \r\n  profiles: dev     \r\n  datasource:\r\n    name: druidDataSource\r\n    type: com.alibaba.druid.pool.DruidDataSource\r\n    druid:\r\n      driver-class-name: com.mysql.cj.jdbc.Driver\r\n      url: jdbc:mysql://127.0.0.1:3306/vaneu-cloud-order?useUnicode=true&characterEncoding=UTF-8&serverTimezone=Hongkong\r\n      username: root\r\n      password: 123456\r\n      max-active: 5\r\n      initial-size: 5\r\n      max-wait: 60000\r\n      min-idle: 1\r\n      time-between-eviction-runs-millis: 60000\r\n      min-evictable-idle-time-millis: 300000\r\n      validation-query: select \'x\'\r\n      test-while-idle: true\r\n      test-on-borrow: false\r\n      test-on-return: false\r\n      pool-prepared-statements: true\r\n      max-open-prepared-statements: 50\r\n      max-pool-prepared-statement-per-connection-size: 20\r\n      \r\n      filter:\r\n        stat:\r\n          enabled: true\r\n      stat-view-servlet:\r\n        enabled: true\r\n        login-username: admin\r\n        login-password: vaneu\r\n        \r\nswagger:\r\n  enable: true\r\n\r\nmybatis-plus:\r\n  mapper-locations: classpath:/mapper/**Mapper.xml\r\n  typeAliasesPackage: com.vaneu.order.domain           #实体扫描，多个package用逗号或者分号分隔\r\n      \r\n#actuator\r\nmanagement:\r\n  endpoints:\r\n    web:\r\n      exposure:\r\n        include: \'*\'\r\nlogging:\r\n  file: vaneu-cloud-service-order.log\r\n  level:\r\n    com.vaneu: debug\r\n    com.alibaba.nacos.client.config.impl: WARN', '4a3a008a55adcaf59c50fcd584c42514', '2020-08-31 11:56:03', '2020-08-31 12:21:32', NULL, '127.0.0.1', 'vaneu-cloud-service-order', 'vaneu', '', '', '', 'yaml', '');
INSERT INTO `config_info` VALUES (28, 'vaneu-cloud-gateway-dev.yaml', 'DEFAULT_GROUP', 'spring: \r\n  profiles: dev     \r\n\r\n  cloud:\r\n    sentinel:\r\n      transport:\r\n        dashboard: 127.0.0.1:8080   #指定Sentinel DashBoard服务地址\r\n        port: 7000                  #默认7000端口，假如被占用会自动从7000开始依次+1扫描，直至找到未被占用的端口\r\n      \r\n    #gateway组件相关配置\r\n    gateway:\r\n      discovery:\r\n        locator:\r\n          enabled: true             #开启基于服务的注册和发现的路由转发,默认轮询模式\r\n      routes:\r\n        - id: vaneu-cloud-service-order\r\n          uri: lb://vaneu-cloud-service-order\r\n          predicates:\r\n            - Path=/order/**\r\n          filters:\r\n            - StripPrefix=1\r\n        - id: vaneu-cloud-service-user\r\n          uri: lb://vaneu-cloud-service-user\r\n          predicates:\r\n            - Path=/user/**\r\n          filters:\r\n            - StripPrefix=1\r\n                  \r\nswagger:\r\n  enable: true\r\n\r\nlogging:\r\n  level:\r\n    com.vaneu: debug\r\n    com.alibaba.nacos.client.config.impl: WARN', 'bc8c56a772067acb114e1932fa853e7e', '2020-08-31 12:22:08', '2020-08-31 12:25:26', NULL, '127.0.0.1', 'vaneu-cloud-gateway', 'vaneu', '', '', '', 'yaml', '');

-- ----------------------------
-- Table structure for config_info_aggr
-- ----------------------------
DROP TABLE IF EXISTS `config_info_aggr`;
CREATE TABLE `config_info_aggr`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `datum_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '内容',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfoaggr_datagrouptenantdatum`(`data_id`, `group_id`, `tenant_id`, `datum_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '增加租户字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info_aggr
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_beta
-- ----------------------------
DROP TABLE IF EXISTS `config_info_beta`;
CREATE TABLE `config_info_beta`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `beta_ips` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'betaIps',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfobeta_datagrouptenant`(`data_id`, `group_id`, `tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info_beta' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info_beta
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_tag
-- ----------------------------
DROP TABLE IF EXISTS `config_info_tag`;
CREATE TABLE `config_info_tag`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `tag_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfotag_datagrouptenanttag`(`data_id`, `group_id`, `tenant_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info_tag' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info_tag
-- ----------------------------

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS `config_tags_relation`;
CREATE TABLE `config_tags_relation`  (
  `id` bigint NOT NULL COMMENT 'id',
  `tag_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
  `tag_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'tag_type',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `nid` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nid`) USING BTREE,
  UNIQUE INDEX `uk_configtagrelation_configidtag`(`id`, `tag_name`, `tag_type`) USING BTREE,
  INDEX `idx_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_tag_relation' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_tags_relation
-- ----------------------------

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS `group_capacity`;
CREATE TABLE `group_capacity`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
  `quota` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
  `usage` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用量',
  `max_size` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数，，0表示使用默认值',
  `max_aggr_size` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '集群、各Group容量信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS `his_config_info`;
CREATE TABLE `his_config_info`  (
  `id` bigint UNSIGNED NOT NULL,
  `nid` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `op_type` char(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`nid`) USING BTREE,
  INDEX `idx_gmt_create`(`gmt_create`) USING BTREE,
  INDEX `idx_gmt_modified`(`gmt_modified`) USING BTREE,
  INDEX `idx_did`(`data_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '多租户改造' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of his_config_info
-- ----------------------------
INSERT INTO `his_config_info` VALUES (0, 33, 'com.paiye.console.service.ISysActivitiesService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"removeById,lambdaQuery,removeByMap,listByIds,updateBatchById,saveOrUpdate,addActivities,getCouponActivitiesById,query,count,listObjs,list,getMap,getPageActivities,getById,getOne,getPageSysActivities,page,save,update,getObj,saveOrUpdateBatch,remove,getBaseMapper,removeByIds,lambdaUpdate,listMaps,getCouponActivities,saveBatch,activitiesExecution,checkActivitiesByCouponId,updateById,pageMaps,listByMap,updateStatus\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.console.service.ISysActivitiesService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', '69b4ba8a128fe061e548efea8b4ae522', '2020-12-31 17:47:50', '2020-12-31 09:47:51', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 34, 'com.paiye.driver.common.api.IDriverCouponService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"removeById,updateCouponExpired,lambdaQuery,removeByMap,listByIds,updateBatchById,saveOrUpdate,query,count,listObjs,list,getMap,getEffectiveDriverCouponByDriverId,getById,getOne,page,save,update,getObj,saveOrUpdateBatch,remove,pageDriverCouponByDriverId,getBaseMapper,getDriverCouponByDriverId,removeByIds,lambdaUpdate,receiveCoupon,listMaps,saveBatch,checkDriverCouponById,updateById,pageMaps,listByMap,updateDriverUnpaidCoupon\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.driver.common.api.IDriverCouponService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', '62023b498f1c90651602a71cb14c4b10', '2020-12-31 17:47:51', '2020-12-31 09:47:52', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 35, 'com.paiye.console.service.ISysCouponRecordService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"insertDriverCouponRecordByApp,removeById,updateCouponExpired,lambdaQuery,updateCouponStatusByCode,removeByMap,insertConsignorCouponRecordByApp,listByIds,updateBatchById,saveOrUpdate,getPageSysCouponRecord,query,count,listObjs,list,getMap,getById,getOne,page,insertDriverCouponRecord,save,update,getObj,saveOrUpdateBatch,remove,getBaseMapper,removeByIds,lambdaUpdate,listMaps,saveBatch,updateById,pageMaps,listByMap,insertConsignorCouponRecord\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.console.service.ISysCouponRecordService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', '156ecd1fe70636ef4c023f4936d1a30c', '2020-12-31 17:47:51', '2020-12-31 09:47:52', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 36, 'com.paiye.personal.common.service.coupon.ICouponService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"getCouponById,removeById,updateCouponExpired,lambdaQuery,removeByMap,listByIds,updateBatchById,saveOrUpdate,query,count,listObjs,list,getMap,pageCoupon,getCoupons,getById,getOne,page,isExistCoupon,save,update,getObj,getGiftableCoupons,saveOrUpdateBatch,remove,getBaseMapper,removeByIds,lambdaUpdate,listMaps,saveBatch,updateById,pageMaps,giveAwayCoupon,listByMap\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.personal.common.service.coupon.ICouponService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', '700a1c3c5eac6424a92982f21bbe8092', '2020-12-31 17:47:51', '2020-12-31 09:47:52', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 37, 'com.paiye.personal.common.service.order.IOrderService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"finishThirdPay,cancelOrder,getOrders,isWhetherShop,receivedOrders,payOrderByThird,getOrderDetail,getOrderState,changeOrderShopByJob,listByType,acceptOrderSum,initShopOrder,getwebDto\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.personal.common.service.order.IOrderService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', 'b5bdf85061174eb4a0d8ea5156afa5c3', '2020-12-31 17:47:51', '2020-12-31 09:47:52', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 38, 'com.paiye.personal.common.service.IConsignorService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"setPassword,resetPassword,sendConsignorSmsToRegNoShop,removeById,getPage,lambdaQuery,changeMobile,removeByMap,listByIds,saveConsignorModel,updateBatchById,saveOrUpdate,query,count,listObjs,list,getMap,getById,getOne,setNickname,page,getByMobile,save,update,getObj,login,saveOrUpdateBatch,remove,getBaseMapper,removeByIds,lambdaUpdate,verify,clearRedisConsignor,listMaps,saveBatch,initConsignor,updateOldPersonalOssUrl,updateById,pageMaps,redisConsignor,listByMap,checkRegId\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.personal.common.service.IConsignorService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', '89026718cbeaf150665568e1015999f2', '2020-12-31 17:47:51', '2020-12-31 09:47:52', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 39, 'com.paiye.driver.common.api.IDriverService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"searchDriver,removeById,getPage,lambdaQuery,removeByMap,clearRedisDriver,listByIds,updateBatchById,saveOrUpdate,query,count,listObjs,list,getMap,getById,getOne,page,sendSmsToNoSingDriver,save,update,getObj,getDriverByMobile,login,saveOrUpdateBatch,remove,getBaseMapper,removeByIds,lambdaUpdate,verify,listMaps,sendSmsToNoAuditDriver,saveBatch,checkDriverLicenseNumber,updateById,pageMaps,listByMap,getApplyDriverByDriverId\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.driver.common.api.IDriverService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', '1fe00368767caa39596fbc78e714f2b1', '2020-12-31 17:47:51', '2020-12-31 09:47:52', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 40, 'com.paiye.personal.common.service.shop.IShopFanService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"pageShopFan,getConsignorByFanSum,removeById,lambdaQuery,addFan,getFanPageList,removeByMap,modFanScheduledTasks,getShopSumByDriverId,listByIds,getShopIdByDriverId,updateBatchById,inviteFanBatch,saveOrUpdate,isJoinShop,modFanStatus,query,count,listObjs,list,getMap,getFanRecommends,getDriverIdByCid,getFanFeeRule,getById,getOne,getfanTotal,page,getStoreRevenue,insertDanSmsLog,save,update,getObj,refuseJoin,saveOrUpdateBatch,remove,getBaseMapper,checkDriverSms,removeByIds,lambdaUpdate,editFan,listMaps,saveBatch,renewalFanFee,updateById,pageMaps,listByMap,inviteFan\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.personal.common.service.shop.IShopFanService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', 'e5133936d82c30f602289fa338f37a20', '2020-12-31 17:47:51', '2020-12-31 09:47:52', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 41, 'com.paiye.personal.common.service.shop.IShopService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"isExistShopProject,pageShopOrderList,removeById,lambdaQuery,editStoreExpired,removeByMap,getShopShare,listByIds,getDriverFanView,getShopActivityPage,getShopRecommendList,updateBatchById,pageShop,saveOrUpdate,getUpgradeShop,createUpgradeStore,query,count,listObjs,getShopDecorationList,list,createStore,getMap,shopProjectNoZeroNoSign,getShopDecoration,getById,getOne,page,refund,pageFanRenewalShop,getShopCareerList,save,update,getObj,saveOrUpdateBatch,remove,getBaseMapper,getMarginPayView,shopList,removeByIds,getShopByOrder,lambdaUpdate,shopNothingProject,isExistStoreName,pagReceivedOrders,isRenewal,pageFanExpiredShop,addShopResources,listMaps,getShopId,openActivity,saveBatch,updateShopStatus,getShop,editStore,updateById,payMargin,pageMaps,listByMap,getShopView,getShopViewByCid,isExistShop,getMarginRule\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.personal.common.service.shop.IShopService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', 'e6d064cd5aa77baf7c34c2acc0d36cca', '2020-12-31 17:47:51', '2020-12-31 09:47:52', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 42, 'com.paiye.quartz.common.service.IJobService:::provider:pyps-quartz-common', 'dubbo', '', '{\"parameters\":{\"side\":\"provider\",\"release\":\"2.7.4.1\",\"methods\":\"add,resume,reschedule,del,getJobs,pause,getPageJob\",\"deprecated\":\"false\",\"dubbo\":\"2.0.2\",\"interface\":\"com.paiye.quartz.common.service.IJobService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"generic\":\"false\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"payload\":\"52428800\",\"dynamic\":\"true\",\"bean.name\":\"ServiceBean:com.paiye.quartz.common.service.IJobService\",\"anyhost\":\"true\"},\"canonicalName\":\"com.paiye.quartz.common.service.IJobService\",\"codeSource\":\"file:/D:/WorkSpace-IDEA/pyps-server/pyps-quartz/pyps-quartz-common-api/target/classes/\",\"methods\":[{\"name\":\"add\",\"parameterTypes\":[\"java.lang.String\",\"java.lang.String\",\"java.lang.String\",\"java.lang.String\",\"java.util.Map\\u003cjava.lang.String, java.lang.Object\\u003e\"],\"returnType\":\"void\"},{\"name\":\"add\",\"parameterTypes\":[\"java.lang.String\",\"java.lang.String\",\"java.lang.String\",\"java.lang.String\"],\"returnType\":\"void\"},{\"name\":\"resume\",\"parameterTypes\":[\"java.lang.String\",\"java.lang.String\"],\"returnType\":\"void\"},{\"name\":\"del\",\"parameterTypes\":[\"java.lang.String\",\"java.lang.String\"],\"returnType\":\"void\"},{\"name\":\"getPageJob\",\"parameterTypes\":[\"com.paiye.utils.PageUtil\"],\"returnType\":\"com.baomidou.mybatisplus.core.metadata.IPage\"},{\"name\":\"reschedule\",\"parameterTypes\":[\"java.lang.String\",\"java.lang.String\",\"java.lang.String\"],\"returnType\":\"void\"},{\"name\":\"pause\",\"parameterTypes\":[\"java.lang.String\",\"java.lang.String\"],\"returnType\":\"void\"},{\"name\":\"getJobs\",\"parameterTypes\":[],\"returnType\":\"java.util.List\\u003ccom.paiye.quartz.common.dto.JobDto\\u003e\"}],\"types\":[{\"type\":\"void\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"com.paiye.utils.PageUtil\",\"properties\":{\"totalRow\":{\"type\":\"java.lang.Long\",\"properties\":{\"value\":{\"type\":\"long\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"totalPage\":{\"type\":\"java.lang.Long\",\"properties\":{\"value\":{\"type\":\"long\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"page\":{\"type\":\"java.lang.Long\",\"properties\":{\"value\":{\"type\":\"long\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"sort\":{\"type\":\"java.lang.String\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"rows\":{\"type\":\"java.lang.Long\",\"properties\":{\"value\":{\"type\":\"long\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"params\":{\"type\":\"java.util.Map\\u003cjava.lang.String, java.lang.Object\\u003e\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.MapTypeBuilder\"},\"order\":{\"type\":\"java.lang.String\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"com.paiye.quartz.common.dto.JobDto\",\"properties\":{\"cron\":{\"type\":\"java.lang.String\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"text\":{\"type\":\"java.lang.String\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"value\":{\"type\":\"java.lang.String\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"long\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"com.baomidou.mybatisplus.core.metadata.IPage\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"char\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"java.lang.Object\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"int\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"java.lang.String\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"java.lang.Long\",\"properties\":{\"value\":{\"type\":\"long\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}]}', '16ce0a66420d7e8a4c8cd5326f266730', '2020-12-31 17:47:53', '2020-12-31 09:47:54', NULL, '127.0.0.1', 'I', '');
INSERT INTO `his_config_info` VALUES (31, 43, 'com.paiye.console.service.ISysActivitiesService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"removeById,lambdaQuery,removeByMap,listByIds,updateBatchById,saveOrUpdate,addActivities,getCouponActivitiesById,query,count,listObjs,list,getMap,getPageActivities,getById,getOne,getPageSysActivities,page,save,update,getObj,saveOrUpdateBatch,remove,getBaseMapper,removeByIds,lambdaUpdate,listMaps,getCouponActivities,saveBatch,activitiesExecution,checkActivitiesByCouponId,updateById,pageMaps,listByMap,updateStatus\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.console.service.ISysActivitiesService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', '69b4ba8a128fe061e548efea8b4ae522', '2020-12-31 22:45:50', '2020-12-31 14:45:50', NULL, '127.0.0.1', 'D', '');
INSERT INTO `his_config_info` VALUES (32, 44, 'com.paiye.driver.common.api.IDriverCouponService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"removeById,updateCouponExpired,lambdaQuery,removeByMap,listByIds,updateBatchById,saveOrUpdate,query,count,listObjs,list,getMap,getEffectiveDriverCouponByDriverId,getById,getOne,page,save,update,getObj,saveOrUpdateBatch,remove,pageDriverCouponByDriverId,getBaseMapper,getDriverCouponByDriverId,removeByIds,lambdaUpdate,receiveCoupon,listMaps,saveBatch,checkDriverCouponById,updateById,pageMaps,listByMap,updateDriverUnpaidCoupon\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.driver.common.api.IDriverCouponService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', '62023b498f1c90651602a71cb14c4b10', '2020-12-31 22:45:50', '2020-12-31 14:45:50', NULL, '127.0.0.1', 'D', '');
INSERT INTO `his_config_info` VALUES (33, 45, 'com.paiye.console.service.ISysCouponRecordService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"insertDriverCouponRecordByApp,removeById,updateCouponExpired,lambdaQuery,updateCouponStatusByCode,removeByMap,insertConsignorCouponRecordByApp,listByIds,updateBatchById,saveOrUpdate,getPageSysCouponRecord,query,count,listObjs,list,getMap,getById,getOne,page,insertDriverCouponRecord,save,update,getObj,saveOrUpdateBatch,remove,getBaseMapper,removeByIds,lambdaUpdate,listMaps,saveBatch,updateById,pageMaps,listByMap,insertConsignorCouponRecord\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.console.service.ISysCouponRecordService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', '156ecd1fe70636ef4c023f4936d1a30c', '2020-12-31 22:45:50', '2020-12-31 14:45:50', NULL, '127.0.0.1', 'D', '');
INSERT INTO `his_config_info` VALUES (34, 46, 'com.paiye.personal.common.service.coupon.ICouponService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"getCouponById,removeById,updateCouponExpired,lambdaQuery,removeByMap,listByIds,updateBatchById,saveOrUpdate,query,count,listObjs,list,getMap,pageCoupon,getCoupons,getById,getOne,page,isExistCoupon,save,update,getObj,getGiftableCoupons,saveOrUpdateBatch,remove,getBaseMapper,removeByIds,lambdaUpdate,listMaps,saveBatch,updateById,pageMaps,giveAwayCoupon,listByMap\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.personal.common.service.coupon.ICouponService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', '700a1c3c5eac6424a92982f21bbe8092', '2020-12-31 22:45:50', '2020-12-31 14:45:50', NULL, '127.0.0.1', 'D', '');
INSERT INTO `his_config_info` VALUES (35, 47, 'com.paiye.personal.common.service.order.IOrderService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"finishThirdPay,cancelOrder,getOrders,isWhetherShop,receivedOrders,payOrderByThird,getOrderDetail,getOrderState,changeOrderShopByJob,listByType,acceptOrderSum,initShopOrder,getwebDto\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.personal.common.service.order.IOrderService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', 'b5bdf85061174eb4a0d8ea5156afa5c3', '2020-12-31 22:45:50', '2020-12-31 14:45:50', NULL, '127.0.0.1', 'D', '');
INSERT INTO `his_config_info` VALUES (36, 48, 'com.paiye.personal.common.service.IConsignorService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"setPassword,resetPassword,sendConsignorSmsToRegNoShop,removeById,getPage,lambdaQuery,changeMobile,removeByMap,listByIds,saveConsignorModel,updateBatchById,saveOrUpdate,query,count,listObjs,list,getMap,getById,getOne,setNickname,page,getByMobile,save,update,getObj,login,saveOrUpdateBatch,remove,getBaseMapper,removeByIds,lambdaUpdate,verify,clearRedisConsignor,listMaps,saveBatch,initConsignor,updateOldPersonalOssUrl,updateById,pageMaps,redisConsignor,listByMap,checkRegId\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.personal.common.service.IConsignorService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', '89026718cbeaf150665568e1015999f2', '2020-12-31 22:45:50', '2020-12-31 14:45:50', NULL, '127.0.0.1', 'D', '');
INSERT INTO `his_config_info` VALUES (37, 49, 'com.paiye.driver.common.api.IDriverService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"searchDriver,removeById,getPage,lambdaQuery,removeByMap,clearRedisDriver,listByIds,updateBatchById,saveOrUpdate,query,count,listObjs,list,getMap,getById,getOne,page,sendSmsToNoSingDriver,save,update,getObj,getDriverByMobile,login,saveOrUpdateBatch,remove,getBaseMapper,removeByIds,lambdaUpdate,verify,listMaps,sendSmsToNoAuditDriver,saveBatch,checkDriverLicenseNumber,updateById,pageMaps,listByMap,getApplyDriverByDriverId\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.driver.common.api.IDriverService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', '1fe00368767caa39596fbc78e714f2b1', '2020-12-31 22:45:50', '2020-12-31 14:45:50', NULL, '127.0.0.1', 'D', '');
INSERT INTO `his_config_info` VALUES (38, 50, 'com.paiye.personal.common.service.shop.IShopFanService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"pageShopFan,getConsignorByFanSum,removeById,lambdaQuery,addFan,getFanPageList,removeByMap,modFanScheduledTasks,getShopSumByDriverId,listByIds,getShopIdByDriverId,updateBatchById,inviteFanBatch,saveOrUpdate,isJoinShop,modFanStatus,query,count,listObjs,list,getMap,getFanRecommends,getDriverIdByCid,getFanFeeRule,getById,getOne,getfanTotal,page,getStoreRevenue,insertDanSmsLog,save,update,getObj,refuseJoin,saveOrUpdateBatch,remove,getBaseMapper,checkDriverSms,removeByIds,lambdaUpdate,editFan,listMaps,saveBatch,renewalFanFee,updateById,pageMaps,listByMap,inviteFan\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.personal.common.service.shop.IShopFanService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', 'e5133936d82c30f602289fa338f37a20', '2020-12-31 22:45:50', '2020-12-31 14:45:50', NULL, '127.0.0.1', 'D', '');
INSERT INTO `his_config_info` VALUES (39, 51, 'com.paiye.personal.common.service.shop.IShopService:::consumer:pyps-quartz-common', 'dubbo', '', '{\"side\":\"consumer\",\"release\":\"2.7.4.1\",\"methods\":\"isExistShopProject,pageShopOrderList,removeById,lambdaQuery,editStoreExpired,removeByMap,getShopShare,listByIds,getDriverFanView,getShopActivityPage,getShopRecommendList,updateBatchById,pageShop,saveOrUpdate,getUpgradeShop,createUpgradeStore,query,count,listObjs,getShopDecorationList,list,createStore,getMap,shopProjectNoZeroNoSign,getShopDecoration,getById,getOne,page,refund,pageFanRenewalShop,getShopCareerList,save,update,getObj,saveOrUpdateBatch,remove,getBaseMapper,getMarginPayView,shopList,removeByIds,getShopByOrder,lambdaUpdate,shopNothingProject,isExistStoreName,pagReceivedOrders,isRenewal,pageFanExpiredShop,addShopResources,listMaps,getShopId,openActivity,saveBatch,updateShopStatus,getShop,editStore,updateById,payMargin,pageMaps,listByMap,getShopView,getShopViewByCid,isExistShop,getMarginRule\",\"lazy\":\"false\",\"dubbo\":\"2.0.2\",\"check\":\"false\",\"interface\":\"com.paiye.personal.common.service.shop.IShopService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"sticky\":\"false\"}', 'e6d064cd5aa77baf7c34c2acc0d36cca', '2020-12-31 22:45:50', '2020-12-31 14:45:50', NULL, '127.0.0.1', 'D', '');
INSERT INTO `his_config_info` VALUES (40, 52, 'com.paiye.quartz.common.service.IJobService:::provider:pyps-quartz-common', 'dubbo', '', '{\"parameters\":{\"side\":\"provider\",\"release\":\"2.7.4.1\",\"methods\":\"add,resume,reschedule,del,getJobs,pause,getPageJob\",\"deprecated\":\"false\",\"dubbo\":\"2.0.2\",\"interface\":\"com.paiye.quartz.common.service.IJobService\",\"qos.enable\":\"false\",\"timeout\":\"10000\",\"generic\":\"false\",\"retries\":\"0\",\"application\":\"pyps-quartz-common\",\"payload\":\"52428800\",\"dynamic\":\"true\",\"bean.name\":\"ServiceBean:com.paiye.quartz.common.service.IJobService\",\"anyhost\":\"true\"},\"canonicalName\":\"com.paiye.quartz.common.service.IJobService\",\"codeSource\":\"file:/D:/WorkSpace-IDEA/pyps-server/pyps-quartz/pyps-quartz-common-api/target/classes/\",\"methods\":[{\"name\":\"add\",\"parameterTypes\":[\"java.lang.String\",\"java.lang.String\",\"java.lang.String\",\"java.lang.String\",\"java.util.Map\\u003cjava.lang.String, java.lang.Object\\u003e\"],\"returnType\":\"void\"},{\"name\":\"add\",\"parameterTypes\":[\"java.lang.String\",\"java.lang.String\",\"java.lang.String\",\"java.lang.String\"],\"returnType\":\"void\"},{\"name\":\"resume\",\"parameterTypes\":[\"java.lang.String\",\"java.lang.String\"],\"returnType\":\"void\"},{\"name\":\"del\",\"parameterTypes\":[\"java.lang.String\",\"java.lang.String\"],\"returnType\":\"void\"},{\"name\":\"getPageJob\",\"parameterTypes\":[\"com.paiye.utils.PageUtil\"],\"returnType\":\"com.baomidou.mybatisplus.core.metadata.IPage\"},{\"name\":\"reschedule\",\"parameterTypes\":[\"java.lang.String\",\"java.lang.String\",\"java.lang.String\"],\"returnType\":\"void\"},{\"name\":\"pause\",\"parameterTypes\":[\"java.lang.String\",\"java.lang.String\"],\"returnType\":\"void\"},{\"name\":\"getJobs\",\"parameterTypes\":[],\"returnType\":\"java.util.List\\u003ccom.paiye.quartz.common.dto.JobDto\\u003e\"}],\"types\":[{\"type\":\"void\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"com.paiye.utils.PageUtil\",\"properties\":{\"totalRow\":{\"type\":\"java.lang.Long\",\"properties\":{\"value\":{\"type\":\"long\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"totalPage\":{\"type\":\"java.lang.Long\",\"properties\":{\"value\":{\"type\":\"long\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"page\":{\"type\":\"java.lang.Long\",\"properties\":{\"value\":{\"type\":\"long\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"sort\":{\"type\":\"java.lang.String\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"rows\":{\"type\":\"java.lang.Long\",\"properties\":{\"value\":{\"type\":\"long\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"params\":{\"type\":\"java.util.Map\\u003cjava.lang.String, java.lang.Object\\u003e\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.MapTypeBuilder\"},\"order\":{\"type\":\"java.lang.String\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"com.paiye.quartz.common.dto.JobDto\",\"properties\":{\"cron\":{\"type\":\"java.lang.String\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"text\":{\"type\":\"java.lang.String\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},\"value\":{\"type\":\"java.lang.String\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"long\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"com.baomidou.mybatisplus.core.metadata.IPage\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"char\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"java.lang.Object\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"int\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"java.lang.String\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"},{\"type\":\"java.lang.Long\",\"properties\":{\"value\":{\"type\":\"long\",\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}},\"typeBuilderName\":\"org.apache.dubbo.metadata.definition.builder.DefaultTypeBuilder\"}]}', '16ce0a66420d7e8a4c8cd5326f266730', '2020-12-31 22:45:50', '2020-12-31 14:45:50', NULL, '127.0.0.1', 'D', '');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resource` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  UNIQUE INDEX `uk_role_permission`(`role`, `resource`, `action`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('ROLE_VIEW', ':*:*', 'r');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  UNIQUE INDEX `idx_user_role`(`username`, `role`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('nacos', 'ROLE_ADMIN');
INSERT INTO `roles` VALUES ('vaneu', 'ROLE_VIEW');

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS `tenant_capacity`;
CREATE TABLE `tenant_capacity`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
  `quota` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
  `usage` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用量',
  `max_size` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数',
  `max_aggr_size` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '租户容量信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tenant_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info`;
CREATE TABLE `tenant_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kp` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'kp',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `tenant_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_name',
  `tenant_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'tenant_desc',
  `create_source` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'create_source',
  `gmt_create` bigint NOT NULL COMMENT '创建时间',
  `gmt_modified` bigint NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_tenant_info_kptenantid`(`kp`, `tenant_id`) USING BTREE,
  INDEX `idx_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'tenant_info' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tenant_info
-- ----------------------------
INSERT INTO `tenant_info` VALUES (2, '1', 'vaneu', 'vaneu-cloud', 'vaneu-cloud', 'nacos', 1598783628858, 1598783628858);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('nacos', '$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu', 1);
INSERT INTO `users` VALUES ('vaneu', '$2a$10$48IIvTN20AMyHUyWNROWveRrDaG3nu8Snx7rzpCd2.B9rZVbmm0zm', 1);

SET FOREIGN_KEY_CHECKS = 1;
