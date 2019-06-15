const express=require("express");
const router=express.Router();

const orderController=require("../controller/orderController");

router.get('/Order',orderController.getOrder);
router.get('/Notpaying',orderController.Notpaying);
router.get('/Paymenthasbeen',orderController.Paymenthasbeen);
router.get('/completed',orderController.completed);
router.get('/showOders',orderController.showOders);





module.exports=router;