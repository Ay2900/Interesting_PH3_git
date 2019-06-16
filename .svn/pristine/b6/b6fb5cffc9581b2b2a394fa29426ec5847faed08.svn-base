const dao=require('../dao/shopping_dao');
const controller={
    //展示购物车
    showCar(req,resp){
        let user_id=[req.session.username];
        dao.getShopping_car(user_id)
            .then((data)=>{
                resp.render('TYH/shopping_car',{items:data})
            });
    },
    itemNumUpdate(req,resp){
        let params=[req.body.targetNum,req.body.SKU_code,req.session.username];
        dao.itemNumUpdate(params)
            .then((data)=>{
                resp.send(data);
            })
    },
    shopping_car_item_del(req,resp){
        let params=[req.body.SKU_code,req.session.username];
        dao.shopping_car_item_del(params)
            .then((data)=>{
                resp.send(data);
            })
    },
    goCheckout(req,resp){
        let params=[req.session.username];
        dao.goCheckout(params)
            .then((data)=>{
                console.log(data);
                resp.render('TYH/checkout',data);
            })
    }
};

module.exports=controller;

