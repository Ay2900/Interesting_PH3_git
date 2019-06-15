const dbpool=require("../config/dbpoolconfig");
const orderController={
    getOrder(req,resp){
        console.log("进入控制层");
        dbpool.connect(`
        SELECT
order_table.order_id,
order_table.user_id,
order_table.addr_id,
order_table.order_pay_time,
order_table.order_deliver_time,
order_table.order_receive_time,
order_table.order_pay_method,
order_table.order_amount,
order_table.order_deliver_code,
order_sku_table.order_SKU_id,
order_sku_table.SKU_code,
order_sku_table.order_id,
order_sku_table.order_SKU_num,
user_addr_table.addr_id,
user_addr_table.user_id,
user_addr_table.addr_province,
user_addr_table.addr_city,
user_addr_table.addr_district,
user_addr_table.addr_detail,
user_addr_table.addressee_name,
user_addr_table.addressee_tel,
sku_table.SKU_pic_path,
sku_table.SKU_name,
order_table.order_place_time,
order_table.order_cut_down,
order_table.order_point,
order_table.order_state,
sku_table.SKU_code
FROM
order_table
INNER JOIN order_sku_table ON order_sku_table.order_id = order_table.order_id
INNER JOIN user_addr_table ON order_table.addr_id = user_addr_table.addr_id
INNER JOIN sku_table ON order_sku_table.SKU_code = sku_table.SKU_code


        `, [null],
            function (err,data) {
                console.log(data);
                resp.render('CH/order',{list:data});
            });

    },
    Notpaying(req,resp){
        dbpool.connect(`SELECT
order_table.order_id,
order_table.user_id,
order_table.addr_id,
order_table.order_pay_time,
order_table.order_deliver_time,
order_table.order_receive_time,
order_table.order_pay_method,
order_table.order_amount,
order_table.order_deliver_code,
order_sku_table.order_SKU_id,
order_sku_table.SKU_code,
order_sku_table.order_id,
order_sku_table.order_SKU_num,
user_addr_table.addr_id,
user_addr_table.user_id,
user_addr_table.addr_province,
user_addr_table.addr_city,
user_addr_table.addr_district,
user_addr_table.addr_detail,
user_addr_table.addressee_name,
user_addr_table.addressee_tel,
sku_table.SKU_pic_path,
sku_table.SKU_name,
order_table.order_place_time,
order_table.order_cut_down,
order_table.order_point,
order_table.order_state,
sku_table.SKU_code
FROM
order_table
INNER JOIN order_sku_table ON order_sku_table.order_id = order_table.order_id
INNER JOIN user_addr_table ON order_table.addr_id = user_addr_table.addr_id
INNER JOIN sku_table ON order_sku_table.SKU_code = sku_table.SKU_code
WHERE
order_table.order_pay_time is null

` ,[null],function (err,data) {
            resp.render('CH/Notpaying',{list:data});
        })
    },
    Paymenthasbeen(req,resp){
        dbpool.connect(`SELECT
order_table.order_id,
order_table.user_id,
order_table.addr_id,
order_table.order_pay_time,
order_table.order_deliver_time,
order_table.order_receive_time,
order_table.order_pay_method,
order_table.order_amount,
order_table.order_deliver_code,
order_sku_table.order_SKU_id,
order_sku_table.SKU_code,
order_sku_table.order_id,
order_sku_table.order_SKU_num,
user_addr_table.addr_id,
user_addr_table.user_id,
user_addr_table.addr_province,
user_addr_table.addr_city,
user_addr_table.addr_district,
user_addr_table.addr_detail,
user_addr_table.addressee_name,
user_addr_table.addressee_tel,
sku_table.SKU_pic_path,
sku_table.SKU_name,
order_table.order_place_time,
order_table.order_cut_down,
order_table.order_point,
order_table.order_state,
sku_table.SKU_code
FROM
order_table
INNER JOIN order_sku_table ON order_sku_table.order_id = order_table.order_id
INNER JOIN user_addr_table ON order_table.addr_id = user_addr_table.addr_id
INNER JOIN sku_table ON order_sku_table.SKU_code = sku_table.SKU_code
WHERE
order_table.order_deliver_time !="" and
order_receive_time IS null
`,[null],function (err,data) {
            resp.render('CH/Paymenthasbeen',{list:data});
        })
    },

    completed(req,resp){
        dbpool.connect(`SELECT
order_table.order_id,
order_table.user_id,
order_table.addr_id,
order_table.order_pay_time,
order_table.order_deliver_time,
order_table.order_receive_time,
order_table.order_pay_method,
order_table.order_amount,
order_table.order_deliver_code,
order_sku_table.order_SKU_id,
order_sku_table.SKU_code,
order_sku_table.order_id,
order_sku_table.order_SKU_num,
user_addr_table.addr_id,
user_addr_table.user_id,
user_addr_table.addr_province,
user_addr_table.addr_city,
user_addr_table.addr_district,
user_addr_table.addr_detail,
user_addr_table.addressee_name,
user_addr_table.addressee_tel,
sku_table.SKU_pic_path,
sku_table.SKU_name,
order_table.order_place_time,
order_table.order_cut_down,
order_table.order_point,
order_table.order_state,
sku_table.SKU_code
FROM
order_table
INNER JOIN order_sku_table ON order_sku_table.order_id = order_table.order_id
INNER JOIN user_addr_table ON order_table.addr_id = user_addr_table.addr_id
INNER JOIN sku_table ON order_sku_table.SKU_code = sku_table.SKU_code
WHERE
order_table.order_deliver_time !="" and
order_receive_time !="" AND
order_pay_time !=""
`,[],function (err,data) {
            resp.render('CH/completed',{list:data});
        })
    },
    showOders(req,resp){
        dbpool.connect(`SELECT
comment_pic_table.comment_pic_id,
comment_pic_table.comment_id,
comment_pic_table.comment_pic_url,
comment_table.comment_time,
comment_table.comment_star,
comment_table.SKU_code,
comment_table.comment_content
FROM
comment_pic_table
INNER JOIN comment_table ON comment_pic_table.comment_id = comment_table.comment_id
`,[null],function (err,data) {
            console.log(data);
            resp.render('CH/showOders',{list:data});
        })
    }
};



module.exports=orderController;
