const express=require('express');
const controller=require('../controller/shopping_controller');
const router=express.Router();
router.get('/shopping_car',controller.showCar);//跳转购物车
router.get('/go_to_checkout',controller.goCheckout);//跳转结算页
router.post('/shopping_car_item_num_update',controller.itemNumUpdate);//购物车条目数量改变
router.post('/shopping_car_item_del',controller.shopping_car_item_del);//删除购物车条目
router.post('/send_addr_id',controller.sendAddrId);//进行数据库更新
router.post('/go_to_pay',controller.goToPay);//跳转支付页面
router.post('/pay_confirm',controller.payConfirm);//完成支付
module.exports=router;