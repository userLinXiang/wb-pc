const express=require('express');
const session = require("express-session");
const bodyParser=require('body-parser');
const user=require('./routers/user');
const index=require('./routers/index')
const shop=require('./routers/shop')
//创建服务器 端口3000
var app=express();
app.listen(3000,()=>{
    console.log('web服务器创建成功')
});

//托管静态资源
app.use(express.static('product'));
app.use(express.static('routers'));

//使用body-parser
app.use(bodyParser.urlencoded({
    extended:false
}));

//使用session模块
app.use(session({
    secret:'随机字符串',
    cookie:{maxAge:60*1000*30},//过期时间ms
    resave:false,
    saveUninitialized:true
  }));
//挂载路由
app.use('/user',user);
app.use('/index',index);
app.use('/shop',shop);