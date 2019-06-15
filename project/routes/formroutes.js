const  express=require("express");
const userController=require("../controller/userController");
const smsController=require("../controller/smsController");
const router=express.Router();

router.post("/login.do",userController.login);
router.post("/sendCode.do",smsController.sendCode);
router.post("/verifyCode.do",smsController.verifyCode);
router.post("/chkexist.do",userController.chkexist);
router.post("/chgpwd.do",userController.chgpwd);
router.post("/chkacc.do",userController.chkacc);
router.get("/regUser.do",userController.useradd);


module.exports=router;
