const dbpool=require('../config/dbpoolconfig');
const stylisyController={
    stylistImg(req,resp){
        // console.log("进入控制层");
        dbpool.connect(`SELECT
designer_table.designer_name,
designer_table.designer_hold_place,
designer_table.designer_main_pic_path,
designer_table.designer_motto
FROM
designer_table
`,[null],function (err,data) {
            resp.render('ZYS/stylist',{list:data});
            // console.log(data);
        })
    },
    stylistPage1(req,resp){
        // console.log("进入控制层");
        dbpool.connect(`SELECT
designer_table.designer_name,
designer_table.designer_birth_place,
designer_table.designer_hold_place,
designer_table.designer_main_pic_path,
designer_table.designer_describe,
designer_table.designer_bgi_pic_path,
designer_awards_table.designer_award_date,
designer_awards_table.designer_award_pic_path,
designer_awards_table.designer_award_describe
FROM
designer_table
INNER JOIN designer_awards_table ON designer_awards_table.designer_id = designer_table.designer_id`,[null],function (err,data) {
            resp.render('ZYS/stylist-1',{list:data});
            console.log(data);
        })

    }
};
module.exports=stylisyController;