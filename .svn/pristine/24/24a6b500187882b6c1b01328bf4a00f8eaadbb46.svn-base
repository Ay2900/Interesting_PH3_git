const dbpool=require("../config/dbpoolconfig");
const userModel={
    checkUser(params){
        return new Promise(function (resolve,reject) {//resolve-成功 reject-失败
            let sql=`
                SELECT DISTINCT
                a.user_id,
                a.user_account_name,
                a.user_nickname,
                a.user_password,
                a.user_tel_num,
                a.user_sex,
                a.user_reg_date,
                a.user_birthday,
                a.user_icon_path
                FROM
                user_profile_table AS a
                INNER JOIN user_profile_table AS b ON a.user_id = b.user_id
                WHERE
                (a.user_account_name = ? OR
                a.user_tel_num = ? )AND
                b.user_password = ?

            `;
            // console.log(typeof sql);
            // console.log(sql);
            dbpool.connect(sql,
                params,(err,data)=>{
                // console.log("==============");
                //     console.log(data);
                    // console.log(err);
                    if(!err){
                        resolve(data);
                    }else{
                        reject(err);
                    }
                })
        })
    },
    chkaccount(params){
        return new Promise(function (resolve,reject) {
            dbpool.connect("select * from user_profile_table where user_account_name = ? ",params,(err,data)=>{
                console.log("查询结果")
                console.log(data);
                if(data.length>0){
                    // console.log(data);
                    resolve(data);
                }else {
                    reject(err);
                }

            })

        })
    },
    changepwd(params){
        return new Promise(function (resolve,reject) {
            dbpool.connect("update user_profile_table set user_password=? where user_account_name=?",params,(err,data)=>{
                console.log("修改的数据");
                resolve(data)

            })


        })
    },
    chkaccount2(params){
        return new Promise(function (resolve,reject) {
            dbpool.connect("select * from user_profile_table where user_account_name = ? ",params,(err,data)=>{
                console.log("查询结果")
                console.log(data);
                if(data.length>0){
                    // console.log(data);
                    resolve(data);
                }else {
                    reject(err);
                }

            })

        })
    },
    adduser(params){
        return new Promise(function (resolve,reject) {
            dbpool.connect("insert into user_profile_table values(?,?,?,?,?,?,?,?,?)",params,(err,data)=>{
                // console.log("添加数据");
                console.log(data);
                if(!err){
                    // console.log(data);
                    resolve(data);
                }else {
                    reject(err);
                }

                // else {
                //     console.log("错误信息");
                //     reject(err)
                // }

            })

        })
    }

};
module.exports=userModel;