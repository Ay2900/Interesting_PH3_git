const dao = require('../dao/shopping_dao');
const controller = {
    //展示购物车
    showCar(req, resp) {
        let user_id = [req.session.username];
        dao.getShopping_car(user_id)
            .then((data) => {
                resp.render('TYH/shopping_car', {items: data})
            });
    },
    itemNumUpdate(req, resp) {
        let params = [req.body.targetNum, req.body.SKU_code, req.session.username];
        dao.itemNumUpdate(params)
            .then((data) => {
                resp.send(data);
            })
    },
    shopping_car_item_del(req, resp) {
        let params = [req.body.SKU_code, req.session.username];
        dao.shopping_car_item_del(params)
            .then((data) => {
                resp.send(data);
            })
    },
    goCheckout(req, resp) {
        let params = [req.session.username];
        dao.goCheckout(params)
            .then((data) => {
                console.log(data);
                resp.render('TYH/checkout', data);
            })
    },
    sendAddrId(req, resp) {
        let paramsInsertOrder = [
            req.session.username,
            req.body.addr_id,
            req.session.username,
            String(parseInt((Math.random() * 10 + 1) * 100000000000000))];
        let paramsInsertItem = [
            req.session.username,
            req.session.username];
        let paramsDelCarItem = [req.session.username];
        let paramsGetOrderId = [req.session.username];
        dao.sendAddrId(paramsInsertOrder, paramsInsertItem, paramsDelCarItem,paramsGetOrderId)
            .then((data) => {
                if (data) {
                    console.log('get order id success :'+data[0].order_id);
                    resp.send(data);
                }
            });
    },
    goToPay(req,resp){
        console.log('get post go_to_pay,order_id:'+req.body.order_id);
        let params=[req.body.order_id];
        dao.goToPay(params)
            .then((data)=>{
                if (data){
                    console.log(data);
                    resp.render('TYH/pay',{list:data});
                }
            });
    },
    payConfirm(req,resp){
        console.log(req.body.order_id);
        let params=[req.body.order_id];
        dao.payConfirm(params)
            .then((data)=>{
                if (data==='success'){
                    console.log(data);
                    resp.send('success');
                }
            });
}
};

module.exports = controller;

