//引用模块开始
const express = require("express");
const app = express();
const logger = require("morgan");
const favicon = require("serve-favicon");
const bodyParser = require("body-parser");
const path = require("path");
const session = require("express-session");
const cookieParser = require("cookie-parser");
//引用模块结束

// 引用路由 开始
const formroutes = require("./routes/formroutes");//登录路由
const CommodityRouting = require("./routes/CommodityRouting");//商品页路由
const shopping_router = require('./routes/shopping_router');//购买流程路由
const stylist_route = require('./routes/stylist_route');//设计师路由
const order = require('./routes/order');//订单系统路由
const personCenter_router = require('./routes/personCenter_router');//个人中心路由
// const index_route = ('./routes/index_route');//index测试路由（删）
const test = require('./routes/test');//测试路由
// 引用路由 结束

app.use(logger("dev"));//开发log配置
app.use(favicon(__dirname + "/public/images/favicon.ico"));//项目图标配置

//配置POST bodyParser 开始
app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());
//配置POST bodyParser 结束

//配置EJS 开始
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");
//配置EJS 结束

//缓存配置开始
app.use(cookieParser());
app.use(session({
    name: "Yuyang",//cookie名称
    secret: "123123123",//秘钥
    cookie: {maxAge: 1000 * 60 * 60 * 24 * 30},//cookie有效时间，毫秒为单位
    resave: true,//更新session-cookie失效时间
    rolling: true,//更新保存，按照原设定的maxAge重新设置session 同步到cookie
    saveUninitialized: true  //未初始化cookie是否需要保存
}));
//缓存配置结束



//不需登录路由配置开始
app.use(formroutes);
// app.use(index_route);
app.use(CommodityRouting);
app.use(stylist_route);
app.use(test);
//不需登录路由配置结束

// 配置通用拦截，防止未登录情况下进入其他网页 开始
app.use("/", (req, resp, next) => {
    req.headers.referer = req.headers.referer || "";
    if (
        req.session.username ||//若存在用户登陆信息
        req.path === "/login.html" || //若访问的市登陆界面
        req.headers.referer.match(/login.html$/)//若是在向服务器提交登录数据
    || req.path == "/images/lgbj.png"
    || req.path == "/index.html" || req.headers.referer.match(/index.html$/)
     || req.headers.referer.match(/productList$/)
     || req.headers.referer.match(/stylist$/)
     || req.path === "/pages/LJC/login2.html"
     || req.headers.referer.match(/login2.html$/)
    // || req.path == "/reg.html" || req.headers.referer.match(/reg.html$/))
    ) {
        next();//进入后续路由
    } else {//若不满足上述条件
        req.session.preUrl = req.url;//将本次请求储存在session对象中
        resp.redirect("/login.html")//定向到登录页面
    }
});
// 配置通用拦截，防止未登录情况下进入其他网页 结束

//可直接访问静态资源配置 开始
app.use(express.static(__dirname + "/public"));


//需登录路由配置 开始
app.use(order);
app.use(shopping_router);
app.use(personCenter_router);
//需登录路由配置 结束

//跳转404页面 开始
app.use((req, resp) => {
    resp.redirect("404.html");
    resp.status(404);
});
//跳转404页面 结束

app.set("port", 8989);
app.listen(8989, () => {
    console.log("服务启动" + app.get("port"));

});
