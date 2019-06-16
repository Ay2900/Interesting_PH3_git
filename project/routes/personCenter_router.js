const express = require("express");
const personController = require("../controller/personCenter_controller");

const  router = express.Router();//调用express对象提供的路由方法获取路由对象


router.get("/me",personController.getUser);
router.get("/address",personController.getUserAddress);
router.get("/deleteAddress.do",personController.deleteUserAddress);
router.get("/collect",personController.getUserCollect);
router.get("/editinfo",personController.getUserProfile);

module.exports=router;