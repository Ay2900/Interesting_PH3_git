const CommodityModel=require("../dao/CommodityDao");
const CommodityController= {
    commodityDetails (req, resp) {
        let SPU_code=req.query.SPU_code;
        console.log(SPU_code);
        CommodityModel.getcommodityDetails([SPU_code])
            .then((data)=>{
                console.log(data);
                resp.render('XY/commodityDetails', {mysku:data})
            });
    },
    productList (req, resp) {
        CommodityModel.getAllGoods([])
            .then((data)=>{
                console.log(data);
               resp.render('XY/productList', {mydata:data})
            });
    },
    detailGoods(req,resp){
       let detailColor=req.body.detailColor;
       let detailStyle=req.body.detailStyle;
       console.log(detailColor,detailStyle);
        CommodityModel.detailGoods([detailColor,detailStyle])
            .then((data)=>{
                // console.log("------这里是控制层-------");
                // console.log(data);
                resp.send(data);
            })
    }

};
module.exports=CommodityController;