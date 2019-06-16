var pay_method=$('input[name=pay_method]');
var huabei_item=$(".huabei_item");
var wechat=$(".wechat");
$(function () {
    huabei_item.hide();
    wechat.hide();
    pay_method.on('change',function () {
        if (pay_method[1].checked){
            $("#pay_commit").hide();
            wechat.slideDown();
        } else {
            $("#pay_commit").show();
            wechat.slideUp();
        }
        if (pay_method[2].checked){
            huabei_item.slideDown();
        }else {
            huabei_item.slideUp();
        }
    });
    huabei_item.on('click',(e)=>{
        huabei_item.removeClass('active');
        if ($(e.target).hasClass('huabei_item')){
            $(e.target).addClass('active');
        }else {
            $(e.target).parents('.huabei_item').addClass('active');
        }
    });
    $("#pay_commit").on('click',()=>{
        console.log($("[name=pay_method]").val());
        $.ajax({
            type: "POST",
            url: `/pay_confirm`,
            data: `order_id=${$("#order_id").html()}`,
            success: function(data){
                if (data) {
                    console.log(data);
                    paySuccess();
                }else {
                    location.href='/404.html';
                }
            }
        })
    })
});
function paySuccess() {
    location.href='index.html';
}