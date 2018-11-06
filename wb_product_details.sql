CREATE TABLE wb_product_details(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  lname VARCHAR(32),          #商品名称
  os VARCHAR(32),             #操作系统
  category VARCHAR(32),       #所属分类
  d_img VARCHAR(128),         #产品图片
  shelf_time BIGINT,          #上架时间
  sold_count INT,             #已售出的数量
  is_onsale BOOLEAN           #是否促销中
)AUTO_INCREMENT=1;
INSERT INTO wb_product_details VALUES(NULL,1,"【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表","男表",3420,"天梭表","机械","石英表","img/product1.png","80小时动储","8372",1);
INSERT INTO wb_product_details VALUES(NULL,1,"【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表","男表",3420,"天梭表","机械","石英表","img/product1.png","80小时动储","8372",1);
INSERT INTO wb_product_details VALUES(NULL,1,"【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表","男表",3420,"天梭表","机械","石英表","img/product1.png","80小时动储","8372",1);
INSERT INTO wb_product_details VALUES(NULL,1,"【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表","男表",3420,"天梭表","机械","石英表","img/product1.png","80小时动储","8372",1);
INSERT INTO wb_product_details VALUES(NULL,1,"【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表","男表",3420,"天梭表","机械","石英表","img/product1.png","80小时动储","8372",1);
INSERT INTO wb_product_details VALUES(NULL,1,"【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表","男表",3420,"天梭表","机械","石英表","img/product1.png","80小时动储","8372",1);
INSERT INTO wb_product_details VALUES(NULL,1,"【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表","男表",3420,"天梭表","机械","石英表","img/product1.png","80小时动储","8372",1);


INSERT INTO wb_product_details VALUES(NULL,2,"劳力士ROLEX-蚝式恒动系列 116231-63201黑色纪念花纹10钻 机械男表","男表",90450,"劳力士","机械","石英表","img/product2.jpg","","119",0);


INSERT INTO wb_product_details VALUES(NULL,3,"天梭TISSO-杜鲁尔系列 T099.207.16.118.00 自动机械女表","女表",4260,"天梭","机械","石英表","img/product2.jpg","","361",1);