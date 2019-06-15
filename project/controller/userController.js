const userModel=require("../dao/userDao");
const userController= {
    login(req, resp){
        let username = req.body.username;
        let password = req.body.password;
        // console.log(username+password);
        userModel.checkUser([username,username, password])
            .then(data => {
                if (data.length > 0) {
                    // console.log(data[0].username);
                    req.session.username = data[0].user_id;
                    // console.log(data[0].user_id);
                    console.log(req.session.preUrl);
                    if (req.session.preUrl) {
                        resp.send(req.session.preUrl)
                    } else {
                        resp.send("/index.html");
                        // resp.render("index", {username: req.session.username});
                        // resp.send(data);
                    }

                } else {
                    resp.send("错误")
                }
            })

    },
    chkexist(req, resp){
        let username = req.body.username;
        console.log(username);
        userModel.chkaccount([username])
            .then(data => {
            console.log("===========")
                // console.log(err);
                console.log(data);
                // console.log(data.length);
                // if(!err){
                //     resp.send(data)
                // }
                // else {
                //     console.log("啦啦啦");
                //     resp.send(err)
                // }
                resp.send(data);



            })
            .catch(err=>{
                // console.log("啦啦啦");
                console.log(err);
                resp.send(err);
            })

    },
    chgpwd(req, resp){
        let username = req.body.username;
        let password = req.body.password;
        console.log("账号+密码");
        console.log(username+password);
        userModel.changepwd([password, username])
            .then(data => {
                console.log(data);
                resp.send("修改成功");

 })

    },
    chkacc(req, resp){
        let username = req.body.username;
        console.log(username);
        userModel.chkaccount2([username])
            .then(data => {
                console.log("===========");
                // console.log(err);
                console.log(data);
                resp.send(data);
            })
            .catch(err=>{
                console.log(err);
                resp.send(err);
            })

    },
    useradd(req,resp){
        let nicheng=req.query.nicheng;
        let account=req.query.account;
        let password=req.query.password;
        let phone=req.query.phone;
        console.log(nicheng+account+password+phone);
        userModel.adduser([null,account,nicheng,password,phone,null,null,null,null])
            .then(data=>{
                console.log("添加学生");
                console.log(data);
                // resp.send("注册成功");

                resp.redirect("./pages/LJC/successreg.html")


            })
            .catch(err=>{
            console.log(err);
            console.log("错误了");
            resp.send(err);

        })

}

}
module.exports=userController;