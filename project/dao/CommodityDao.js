const dbpool = require("../config/dbpoolconfig");
const CommodityDao = {
    getAllGoods(params) {
        return new Promise((resolve, reject) => {
            dbpool.connect("SELECT\n" +
                "spu_table.SPU_code,\n" +
                "spu_table.SPU_name,\n" +
                "spu_table.SPU_describe,\n" +
                "spu_table.SPU_head_img_path,\n" +
                "sku_table.SKU_code,\n" +
                "sku_table.sell_price\n" +
                "FROM\n" +
                "spu_table\n" +
                "INNER JOIN sku_table ON sku_table.SPU_code = spu_table.SPU_code\n" +
                "GROUP BY\n" +
                "spu_table.SPU_code\n", params, (err, data) => {
                console.log("Dao：");
                console.log(data);
                resolve(data);
            })
        })
    },
    getcommodityDetails(params) {
        return new Promise((resolve, reject) => {
            let sql = `
                SELECT
                	sku_info.SKU_code,
                	sku_info.SKU_name,
                	sku_info.spec_col_id_color,
                	sku_info.spec_id_color,
                	sku_info.parameter_name_color,
                	sku_info.spec_option_id_color,
                	sku_info.spec_option_value_color,
                	sku_info.spec_col_id_style,
                	sku_info.spec_id_style,
                	sku_info.parameter_name_style,
                	sku_info.spec_option_id_style,
                	sku_info.spec_option_value_style,
                	sku_info.SPU_code,
                	sku_info.SPU_name,
                	sku_info.sub_type_id,
                	sku_info.sub_type_name,
                	sku_info.main_type_code,
                	sku_info.main_type_name,
                	sku_info.designer_id,
                	sku_info.product_series_id,
                	sku_info.SPU_describe,
                	sku_info.SPU_head_img_path,
                	sku_info.purchase_price,
                	sku_info.sell_price,
                	sku_info.stock,
                	sku_info.log_date,
                	sku_info.produce_date,
                	sku_info.SKU_pic_path,
                	sku_info.SKU_size_pic_path 
                FROM
                	sku_info 
                WHERE
                	sku_info.SPU_code = ?
                `;
            dbpool.connect(sql, params, (err, data) => {
                let sendObj = {
                    colorList:null,
                    styleList:null,
                    mainData:null
                };
                let styleArry=[];
                let colorArry=[];
                for (let i = 0; i < data.length; i++) {
                    colorArry.push(data[i].spec_option_value_color);
                }
                for (let i = 0; i < data.length; i++) {
                    styleArry.push(data[i].spec_option_value_style);
                }
                /*去重*/
                /*去重函数*/
                function uniq(array){
                    var temp = []; //一个新的临时数组
                    for(var i = 0; i < array.length; i++){
                        if(temp.indexOf(array[i]) === -1){
                            temp.push(array[i]);
                        }
                    }
                    return temp;
                }

                sendObj.colorList=uniq(colorArry);
                sendObj.styleList=uniq(styleArry);
                sendObj.mainData=data;
                if (err) {
                    console.log("这里是DAO错误-------");
                    console.log(err);
                } else {
                    console.log("这里是DAO正确-------");
                    console.log(data);
                }
                resolve(sendObj);
                // resolve(data);
                // console.log(params);

            })
        })
    },
    detailGoods(params) {
        return new Promise((resolve, reject) => {
            let sql = `
                    SELECT
                    sku_info.SKU_code,
                    sku_info.spec_option_value_color,
                    sku_info.spec_option_value_style,
                    sku_info.SKU_pic_path
                    FROM
                    sku_info
                    WHERE
                    sku_info.spec_option_value_color = ? AND
                    sku_info.spec_option_value_style = ?
                `;
            dbpool.connect(sql, params, (err, data) => {
                if (err) {
                    console.log("这里是DAO错误-------");
                    console.log(err);
                } else {
                    console.log("这里是DAO正确-------");
                    console.log(data);
                }
                resolve(data);
                console.log(params);

            })
        })

    }
};

module.exports = CommodityDao;