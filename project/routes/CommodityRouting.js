const  express=require("express");
const CommodityModel=require("../controller/CommodityController");
const router=express.Router();

router.get('/Commodity',CommodityModel.commodityDetails);
router.get('/productList',CommodityModel.productList);
router.post('/detailGoods',CommodityModel.detailGoods);




module.exports=router;