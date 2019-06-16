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
    }
};
function a(){

}
module.exports = dao;