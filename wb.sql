SET NAMES UTF8;
DROP DATABASE IF EXISTS wb;
CREATE DATABASE wb CHARSET=UTF8;
USE wb;
-- ----------------------------
-- 创建轮播图的表
-- ----------------------------
DROP TABLE IF EXISTS `wb_index_carousel`;
CREATE TABLE `wb_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) ,
  `title` varchar(64) ,
  `href` varchar(128) 
  
)
ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
-- ----------------------------
-- 轮播图的图片 跟href
-- ----------------------------
INSERT INTO `wb_index_carousel` VALUES ('1', 'img/lunbo1.jpg', '轮播广告商品1', 'shopping.html');
INSERT INTO `wb_index_carousel` VALUES ('2', 'img/lunbo7.png', '轮播广告商品2', 'shopping.html');
INSERT INTO `wb_index_carousel` VALUES ('3', 'img/lunbo2.jpg', '轮播广告商品3', 'shopping.html');
INSERT INTO `wb_index_carousel` VALUES ('4', 'img/lunbo3.jpg', '轮播广告商品4', 'shopping.html');
INSERT INTO `wb_index_carousel` VALUES ('5', 'img/lunbo4.jpg', '轮播广告商品4', 'shopping.html');
INSERT INTO `wb_index_carousel` VALUES ('6', 'img/lunbo5.jpg', '轮播广告商品4', 'shopping.html');
INSERT INTO `wb_index_carousel` VALUES ('7', 'img/lunbo6.jpg', '轮播广告商品4', 'shopping.html');
INSERT INTO `wb_index_carousel` VALUES ('8', 'img/lunbo8.jpg', '轮播广告商品4', 'shopping.html');

-- ----------------------------
-- 主页商品表
-- ----------------------------
DROP TABLE IF EXISTS `wb_index_product`;
CREATE TABLE `wb_index_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(64),
  `details` varchar(128),
  `pic` varchar(128),
  `price` decimal(10,2),
  `href` varchar(128),
  `price_code` decimal(10,2),
  `price_code_money` decimal(10,2),
  `sale` decimal(10,2)
  
  
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- 主页商品的数据
-- ----------------------------

INSERT INTO `wb_index_product` VALUES ('1', '9月销售排行榜', '机械表、石英表TOP10', 'img/zhanshi1.jpg', '6988.00', 'shopping.html', '1', '1','');
INSERT INTO `wb_index_product` VALUES ('2', '瑞士表  绅士范', '精选超值好表', 'img/zhanshi2.jpg', '6988.00', 'shopping.html', '1', '1','');
INSERT INTO `wb_index_product` VALUES ('3', '3000-8000元职业表', '正装、商务表应有尽有', 'img/zhanshi3.jpg', '6988.00', 'shopping.html', '1', '1','');
INSERT INTO `wb_index_product` VALUES ('4', '我喜欢的  一定不是从众的', '复古腕表  表友推荐清单', 'img/zhanshi4.jpg', '6988.00', 'shopping.html', '1', '1','');
INSERT INTO `wb_index_product` VALUES ('5', '大牌闪购，2.9折起', '限时购，售完即止', 'img/xianshi.jpg', '6988.00', 'shopping.html', '1', '1','');
/*INSERT INTO `wb_index_product` VALUES ('6', '阿玛尼', '限时购，售完即止', 'img/xianshi3.jpg', '2590', 'shopping.html', '7.9', '1865');
INSERT INTO `wb_index_product` VALUES ('7', '浪琴', '限时购，售完即止', 'img/xianshi4.jpg', '6500', 'shopping.html', '6.3', '4095');
INSERT INTO `wb_index_product` VALUES ('8', '汉米尔顿', '限时购，售完即止', 'img/xianshi5.jpg', '10000', 'shopping.html', '6.9', '6800');
INSERT INTO `wb_index_product` VALUES ('9', '汉米尔顿', '限时购，售完即止', 'img/xianshi6.jpg', '10000', 'shopping.html', '6.9', '6800');

INSERT INTO `wb_index_product` VALUES ('10', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super1.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('11', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super3.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('12', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super4.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('13', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super5.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('14', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super6.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('15', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super1.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('16', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super3.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('17', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super4.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('18', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super5.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('19', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super6.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('20', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super6.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('21', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super4.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('22', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super5.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('23', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super6.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('24', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super6.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('25', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super6.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('26', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super4.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('27', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super5.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('28', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super6.jpg', '6988.00', 'shopping.html', '1', '1');
INSERT INTO `wb_index_product` VALUES ('29', '年轻不需要被定义，“造”起来', '现金券，礼品限量送', 'img/super6.jpg', '6988.00', 'shopping.html', '1', '1');*/


