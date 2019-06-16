const dbpool = require("../config/dbpoolconfig");

const dao = {
    getShopping_car(params) {
        return new Promise((resolve, reject) => {
            let sql = `
                SELECT DISTINCT shopping_car_item_table.shopping_car_item_id,
                                shopping_car_item_table.SKU_code,
                                shopping_car_item_table.shopping_car_SKU_num,
                                shopping_car_item_table.user_id,
                                sku_info.sell_price,
                                sku_info.SKU_pic_path,
                                sku_info.parameter_name_color,
                                sku_info.spec_option_value_color,
                                sku_info.parameter_name_style,
                                sku_info.spec_option_value_style,
                                shopping_car_item_table.is_checked
                FROM shopping_car_item_table
                         INNER JOIN sku_info ON shopping_car_item_table.SKU_code = sku_info.SKU_code
                WHERE shopping_car_item_table.user_id = ?
            `;
            dbpool.connect(sql, params, (error, data) => {
                resolve(data);
            })
        })
    },
    itemNumUpdate(params) {
        return new Promise((resolve, reject) => {
            let sql = `
                UPDATE shopping_car_item_table
                SET shopping_car_SKU_num = ?
                WHERE SKU_code = ?
                  AND user_id = ?
            `;
            dbpool.connect(sql, params, () => {
                resolve('success');
            })
        })
    },
    shopping_car_item_del(params) {
        return new Promise((resolve, reject) => {
            let sql = `
                DELETE
                FROM shopping_car_item_table
                WHERE SKU_code = ?
                  AND user_id = ?
            `;
            dbpool.connect(sql, params, () => {
                resolve('success');
            })
        })
    },
    goCheckout(params) {
        return new Promise((resolve, reject) => {
            let sendObj = {
                addrData: null,
                SKUData: null
            };
            let sqlAddr = `
                SELECT *
                FROM user_addr_table
                WHERE user_addr_table.user_id = ?
            `;
            dbpool.connect(sqlAddr, params, (error,data) => {
                sendObj.addrData = data;
                if (sendObj.SKUData){
                    resolve(sendObj);
                }
            });
            let sqlSKU = `
                SELECT DISTINCT shopping_car_item_table.shopping_car_item_id,
                                shopping_car_item_table.SKU_code,
                                sku_info.SKU_name,
                                shopping_car_item_table.shopping_car_SKU_num,
                                shopping_car_item_table.user_id,
                                sku_info.sell_price,
                                sku_info.SKU_pic_path,
                                sku_info.parameter_name_color,
                                sku_info.spec_option_value_color,
                                sku_info.parameter_name_style,
                                sku_info.spec_option_value_style,
                                shopping_car_item_table.is_checked
                FROM shopping_car_item_table
                         INNER JOIN sku_info ON shopping_car_item_table.SKU_code = sku_info.SKU_code
                WHERE shopping_car_item_table.user_id = ?
                  AND shopping_car_item_table.is_checked = 'true'
            `;
            dbpool.connect(sqlSKU, params, (error,data) => {
                sendObj.SKUData = data;
                if (sendObj.addrData){
                    resolve(sendObj);
                }
            });
        })
    },
    sendAddrId(paramsInsertOrder,paramsInsertItem,paramsDelCarItem,paramsGetOrderId){
        return new Promise((resolve,reject)=>{
            let sqlInsertOrder=`
                INSERT INTO order_table ( user_id, addr_id, order_amount, order_deliver_code )
                VALUES
                (
                ?,
                ?,
                (
                SELECT
                SUM( shopping_car_SKU_num * sell_price ) 
                FROM
                shopping_car_item_table
                INNER JOIN sku_info ON sku_info.SKU_code = shopping_car_item_table.SKU_code 
                WHERE
                shopping_car_item_table.is_checked = 'true' 
                AND shopping_car_item_table.user_id = ? 
                ),
                ? 
                );
            `;
            let sqlInsertItem=`
                INSERT INTO order_sku_table ( SKU_code, order_SKU_num, order_id ) SELECT
                c.SKU_code,
                c.shopping_car_SKU_num,
                b.order_id 
                FROM
                shopping_car_item_table AS c,
                order_table AS b 
                WHERE
                b.user_id = ? 
                AND c.user_id = b.user_id 
                AND c.is_checked = 'true' 
                AND b.order_id = ( SELECT a.order_id FROM order_table AS a WHERE a.user_id = ? ORDER BY a.order_id DESC LIMIT 0, 1 );
            `;
            let sqlDelCarItem=`
                DELETE 
                FROM
                shopping_car_item_table 
                WHERE
                user_id = ? 
                AND is_checked = 'true';
            `;
            let sqlGetOrderId=`
                SELECT
                a.order_id 
                FROM
                order_table AS a 
                WHERE
                a.user_id = ? 
                ORDER BY
                a.order_id DESC 
                LIMIT 0,1
            `;
            dbpool.connect(sqlInsertOrder,paramsInsertOrder,(error1,data1)=>{
                if (error1){
                    console.log(error1.message);
                } else {
                    console.log('insert into order_table success');
                    dbpool.connect(sqlInsertItem,paramsInsertItem,(error2,data2)=>{
                        if (error2){
                            console.log(error2.message);
                        } else {
                            console.log('insert into item_table success');
                            dbpool.connect(sqlDelCarItem,paramsDelCarItem,(error3,data3)=>{
                                if (error3){
                                    console.log(error3);
                                } else {
                                    console.log('delete from car_table success');
                                    dbpool.connect(sqlGetOrderId,paramsGetOrderId,(error4,data4)=>{
                                        if (data4){
                                            resolve(data4);
                                        }
                                    });
                                }
                            })
                        }
                    })
                }
            })
        })
    },
    goToPay(params){
        return new Promise((resolve,reject)=>{
            let sql=`
                SELECT order_table.order_id,
                       order_table.user_id,
                       order_table.addr_id,
                       DATE_FORMAT(order_table.order_place_time,'%Y年%c月%d日 %H:%i:%S') AS creat_time,
                       order_table.order_amount,
                       order_table.order_state,
                       order_sku_table.order_SKU_id,
                       order_sku_table.SKU_code,
                       order_sku_table.order_SKU_num,
                       sku_info.SKU_name,
                       sku_info.SKU_pic_path
                FROM order_table
                         INNER JOIN order_sku_table ON order_sku_table.order_id = order_table.order_id
                         INNER JOIN sku_info ON order_sku_table.SKU_code = sku_info.SKU_code
                WHERE order_table.order_id = ?
            `;
            dbpool.connect(sql,params,(error,data)=>{
                if (data){
                    console.log(data);
                    resolve(data);
                }
            });
        })
    },
    payConfirm(params){
        return new Promise((resolve,reject)=>{
            let sql=`
                UPDATE order_table
                SET order_pay_time = NOW()
                WHERE order_id = ?
            `;
            dbpool.connect(sql,params,(error,data)=>{
                if (error){
                    reject(error);
                } else {
                    resolve('success');
                }
            })
        });
    }
};


module.exports = dao;