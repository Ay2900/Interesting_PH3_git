const express=require('express');
const controller=require('../controller/shopping_controller');
const router=express.Router();
router.get('/shopping_car',controller.showCar);//跳转购物车
router.get('/go_to_checkout',controller.goCheckout);//跳转结算页
router.post('/shopping_car_item_num_update',controller.itemNumUpdate);//购物车条目数量改变
router.post('/shopping_car_item_del',controller.shopping_car_item_del);//删除购物车条目
module.exports=router;