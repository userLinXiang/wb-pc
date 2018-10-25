//导入数据库模块
const mysql=require('mysql');
var pool=mysql.createPool({
    host:'127.0.0.1',
    user:'root',
    password:'',
    database:'wb',
    connectionLimit:10
});
//导出数据池
module.exports=pool;