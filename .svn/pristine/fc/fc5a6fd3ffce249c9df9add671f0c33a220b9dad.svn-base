let imgSrc;
let colorSrc;
let styleSrc;
let sortSrc;
let goodsNum=1;
//商品颜色控制
$("#detailGoods input").on(
    {
        'click':function (){
            // console.log($("[name='detailColor']:checked").val());
            $.ajax({
                type:"post",
                url:"/detailGoods",
                data:$("#detailGoods").serialize(),
                // data:{
                //     detailColor:$("[name='detailColor']:checked").val(),
                //     detailStyle:$("[name='detailStyle']:checked").val()
                // },
                success:function (data) {
                    console.log(data[0]);
                    if(data[0]){
                        imgSrc=data[0].SKU_pic_path;
                        console.log(imgSrc);
                        $(".detailImg img").attr("src",imgSrc);
                    }
                },
                err:function (data) {
                    console.log(data);
                }
            });

        }
    //     {
    //     // console.log($(this).val());
    //     let colorSrcArr=$(this).next().children().attr('src').split('/');
    //     colorSrc=colorSrcArr[colorSrcArr.length-1].split('.')[0];
    //     imgSrc=`../../images/commodityDetails/detailGoodsColor/daxianshengshafa/${colorSrc+styleSrc}.jpg`;
    //        if(colorSrc&&styleSrc){
    //            $(".detailImg img").attr('src',imgSrc);
    //        }
    // },
});
//商品样式控制
$(".detailStyle input").on(
    {
        'click':function (){

        }
        // {
        //     styleSrc=$(this).val();
        //     // console.log(styleSrc);
        //     imgSrc=`../../images/commodityDetails/detailGoodsColor/daxianshengshafa/${colorSrc+styleSrc}.jpg`;
        //     // console.log(imgSrc);
        //     if(colorSrc&&styleSrc){
        //         $(".detailImg img").attr('src',imgSrc);
        //     }
        // },
    });
$(".detailSort input").on(
    {
        'click':function ()
        {
            sortSrc=$(this).val();
            // console.log(styleSrc);
            imgSrc=`../../images/commodityDetails/detailGoodsColor/daxianshengshafa/${colorSrc+styleSrc}.jpg`;
            // console.log(imgSrc);
            if(colorSrc&&styleSrc){
                $(".detailImg img").attr('src',imgSrc);
            }
        },
    });

$(".GoodsNumber input").on(
    'keyup',function () {
        // console.log($(this).val());
        if($(this).val().match(/^(\d|1\d{2}|[1-9]\d|200)$/gm)){
            goodsNum=$(this).val();
        }else {
            goodsNum=$(this).val(1);
        }
    }
);
//商品样式控制

/*控制商品数量增加减少*/
$(".addGoodsNumber").on(
    {
        'click':function () {
            if(goodsNum<200){
                goodsNum++;
            }
            $(".GoodsNumber input").val(goodsNum);
        }
    }
);
$(".subGoodsNumber").on(
    {
        'click':function () {
            if(goodsNum>0){
                goodsNum--;
            }
            $(".GoodsNumber input").val(goodsNum);
        }
    }
);
/*/控制商品数量增加减少*/

/*购物车添加*/
$(".shoppingCart").on("click",function () {
    $("#carAlert").fadeIn(500).delay(5000).fadeOut(500);
});
/*/购物车添加*/


/*控制详情页sec2*/
$(".sec2List li").on(
    "click",function () {
        $(".sec2List li").removeClass("sec2List-show");
        $(this).addClass("sec2List-show");
        console.log($(this).index());
        $(".detailSec2-img>div").removeClass("detailSec2-img-show");
        $(".detailSec2-img>div").eq($(this).index()).addClass("detailSec2-img-show");
    });


/*控制详情页detailSec23*/

$(".detailSec22-but").on("click",function () {
    $(this).children().css(
        {
            "transform":" rotate(0deg)"
        }
    );
   $(".detailSec23").slideToggle(500);
});

let collectControl=false;
/*右侧固定导航控制*/
/*收藏*/
$("#collect span:first").on("click",function () {
    if(collectControl===false){
        $(this).css("color","#00b411");
        $(this).next().html("已收藏");
        $(".CollectionOfSuccess div").children("span:last").text("收藏成功");

        $(".CollectionOfSuccess").fadeIn(500).delay(500).fadeOut(500);
        collectControl=true
    }else {
        $(this).removeAttr("style");
        $(this).next().html("收藏");
        $(".CollectionOfSuccess div").children("span:last").text("取消成功");
        $(".CollectionOfSuccess").fadeIn(500).delay(500).fadeOut(500);

        collectControl=false

    }
});
/*/收藏*/
/*回到顶部*/

$("#collect span:last").on("click",function () {
    console.log($(window).scrollTop());
    $("html,body").animate({scrollTop:0},500);
});
/*顶部导航*/
$(document).ready(function () {
    $(window).scroll(function () {
        // console.log($(this).scrollTop());
        if ($(document).scrollTop()>=800){
            $(".onTop").fadeIn(500);

        }
    });
    $(window).scroll(function () {
        if ($(document).scrollTop()<800){
            $(".onTop").fadeOut(500);
            $(".collect li:eq(1)").slideUp(250);
        }
    });
    /*侧边导航*/
    $(window).scroll(function () {
        // console.log($(this).scrollTop());
        if ($(document).scrollTop()>=900){
            $(".onTop").fadeIn(500);
            $(".collect li:eq(1)").slideDown(250);
        }
    });
});
$(".stylist").on("click",function () {
    $("html,body").animate({scrollTop:$(".detailSec1").offset().top},500);
});
$(".top-Detail").on("click",function () {
    $("html,body").animate({scrollTop:$(".detailSec3").offset().top},500);
});
$(".discounts").on("click",function () {
    $("html,body").animate({scrollTop:$("#tuijianzuhe").offset().top},500);
});

/*顶部导航*/
/*推荐组合*/
$(".detailHead div:eq(1)").children("a").on("click",function () {
    $("html").animate({scrollTop:$("#tuijianzuhe").offset().top},500)
});

/*顶部导航购物车控制*/
let addCart=false;
$(".addCart-but").on("click",function () {
    if(addCart===false){
        $(".onTop").children("div:eq(1)").fadeIn();
        addCart=true;
    }else {
        $(".onTop").children("div:eq(1)").fadeOut();
        addCart=false;
    }
});

/*加入购物车*/
let addCartNum=2;
$(document).ready(function () {
    $("#gouwuche").attr({
        "data-attr":addCartNum
    });
    $("#nav-car").attr(
        "data-attr",addCartNum
)
});

$(".shoppingCart").on("click",function () {
    console.log("addCartNum");
    addCartNum++;
    $("#gouwuche").attr({
        "data-attr":addCartNum
    });
    $("#nav-car").attr(
        "data-attr",addCartNum
    )
});
/*/加入购物车*/

/*取消顶部导航的浮动*/
$(document).ready(function () {
    $(".navbar").removeClass("navbar-fixed-top");
});


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
