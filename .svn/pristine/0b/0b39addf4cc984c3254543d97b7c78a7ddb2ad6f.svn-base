const dbpool = require("../config/dbpoolconfig");
const homepageController = {
    getGoods(request, response) {
        console.log("进入控制层");
        dbpool.connect(`SELECT
spu_table.SPU_code,
spu_table.designer_id,
spu_table.product_series_id,
spu_table.sub_type_id,
spu_table.SPU_name,
spu_table.SPU_describe,
spu_table.SPU_head_img_path,
sku_table.sell_price
FROM
spu_table
INNER JOIN sku_table ON sku_table.SPU_code = spu_table.SPU_code
`, [null], (err, data) => {
            console.log(data);
            response.render('index', {list: data})
        })
    }
};


module.exports = homepageController;