//import { createRequire } from 'module';
//const require = createRequire(import.meta.url);
// 1 引入
const mysql = require('mysql');
// 2 创建链接配置
const conn = mysql.createConnection({
    host:'localhost',   // 主机名 （服务器地址）
    user:'root',    //用户名
    password:'xhw000000',    // 密码
    database:'movie_db',  // 写上自己要连接的数据库名字
})
// 3 建立链接
conn.connect()
// 4 生成sql语句 增删改查操作
let sql = 'select name from movie_info';
//5  执行sql语句
conn.query(sql, (err, result) => {
    if(err){
        console.log(err);
        return
    }
    // 6 处理结果
    //console.log(result)
    let name = result;
    console.log(name[0])
    var clubname = document.querySelectorAll('.ad .shortcut p');
    for (var i = 0; i < 6; i++){
        clubname[i].innerHTML = name[i];
    }
})


