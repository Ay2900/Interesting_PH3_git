const mysql=require("mysql");
const dbpool={
    pool:{},
    config:{
        host: "172.16.14.35",
        port: "3306",
        user: "root",
        password: "root",
        database: "interesting_ph3"
    },
    create(){
        console.log("创建连接池");
        this.pool=mysql.createPool(this.config);
    },
    connect(sql,arr,fn){
        this.pool.getConnection((err,connection)=>{
            connection.query(sql,arr,fn);
            connection.release()
        })
    }
};
dbpool.create();
module.exports=dbpool;