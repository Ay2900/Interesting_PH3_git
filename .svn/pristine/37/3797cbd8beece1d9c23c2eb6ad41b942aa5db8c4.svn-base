const AV=require("leancloud-storage");
const APP_ID="hqid3nLAx4hvnO8a64S4l97l-gzGzoHsz";
const APP_KEY="TtWxu4jcsYNV7BwIFNOi1QyE";
AV.init({
    appId: APP_ID,
    appKey:APP_KEY
});
const smsController={
    sendCode(req,resp){
        console.log(req.body.phone);
        AV.Cloud.requestSmsCode({
            mobilePhoneNumber: req.body.phone,
            name: '造作注册！',
            op: '提醒',
            ttl: 10                     // 验证码有效时间为 10 分钟
        }).then(function () {
            resp.send("验证码发送成功")

        },function (err) {
            console.log(err);
            resp.send("验证码发送失败，请检查手机号")
        });
    },
    verifyCode(req,resp){
        console.log(req.body.code+req.body.phone);
        AV.Cloud.verifySmsCode(req.body.code,req.body.phone).then(function () {
            resp.send("验证成功")
        },function (err) {
           resp.send(err);
        })
    }
};
module.exports=smsController;
