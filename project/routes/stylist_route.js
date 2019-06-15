const  express=require("express");
const router=express.Router();
const stylisyController=require("../controller/stylistController");


router.get('/stylist',stylisyController.stylistImg);
router.get('/stylist-1.do',stylisyController.stylistPage1);




module.exports=router;