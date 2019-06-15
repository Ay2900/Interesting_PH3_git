const shopping_car_item = $('.shopping_car_item');
const car_footer = $('.car_footer');
var car_item;
var priceArray = [];
$(function () {
    shopping_car_item.on('click', '.car_del', (e) => {
        let del = e.target;
        $(del).parents('.shopping_car_item').slideUp(500);
        setTimeout(function () {
            $(del).parents('.shopping_car_item').remove();
        }, 500);
        del_shopping_car_item($(e.target).parents('.shopping_car_item').find('input').val());
    });
    shopping_car_item.on('click', '.num_control:nth-of-type(1)', (e) => {
        let prevNum = parseInt($(e.target).parents(".col-xs-2").children('.num_control:nth-child(2)').html());
        $(e.target).parents(".col-xs-2").children('.num_control:nth-child(2)').html(function () {
            if (prevNum>1) {
                return prevNum - 1;
            }
        });
        car_item=$(e.target).parents('.shopping_car_item').find('.num_control:nth-of-type(2)').html();
        shopping_car_item_num_update($(e.target).parents('.shopping_car_item').find('input').val());
        moneyCount();
    });
    shopping_car_item.on('click', '.num_control:nth-of-type(3)', (e) => {
        let prevNum = parseInt($(e.target).parents(".col-xs-2").children('.num_control:nth-child(2)').html());
        $(e.target).parents(".col-xs-2").children('.num_control:nth-child(2)').html(function () {
            return prevNum + 1;
        });
        console.log('目标SKU编码：'+$(e.target).parents('.shopping_car_item').find('input').val());
        car_item=$(e.target).parents('.shopping_car_item').find('.num_control:nth-of-type(2)').html();
        shopping_car_item_num_update($(e.target).parents('.shopping_car_item').find('input').val());
        moneyCount();
    });
    $('.item_checkbox').on('change', function () {
        $("#check_num").html(function () {
            if ($(':checked:not(.footer_check)').length === $('.item_checkbox').length) {
                $('.footer_check').prop('checked', true);
            } else {
                $('.footer_check').prop('checked', false);
            }
            return $(':checked:not(.footer_check)').length;
        });
        moneyCount();
    });
    $('.footer_check').on('change', function () {
        if ($(this).prop('checked')) {
            $('.item_checkbox').prop('checked', true);
        } else {
            $('.item_checkbox').prop('checked', false);
        }
        moneyCount();
    });
});

function moneyCount() {
    priceArray = [];
    $('#count_price').html(function () {
        if ($(':checked:not(.footer_check)').length===0){
            $("#count_price").html('0');
            $("#pay_price").html('0');
        } else {
            $(':checked:not(.footer_check)').each(function (i, n) {
                let num = parseInt($(n).parents('.shopping_car_item').find('.num_control:nth-of-type(2)').html());
                let price = parseFloat($(n).parents('.shopping_car_item').find('.single_price').html());
                priceArray.push(num * price);
                if (i === $(':checked:not(.footer_check)').length - 1) {
                    let total = 0;
                    $(priceArray).each((i, n) => {
                        total += n;
                    });
                    $("#count_price").html(total);
                    $("#pay_price").html(total);
                }
            })
        }
    })
}
function shopping_car_item_num_update(SKU_code) {
    $.ajax({
        type: "POST",
        url: `/shopping_car_item_num_update`,
        data: `SKU_code=${SKU_code}&targetNum=${car_item}`,
        success: function(data){
            if (data==='success') {
                console.log('num change success');
            }else {
                console.log('get wrong data');
            }
        }
    });
}
function del_shopping_car_item(SKU_code) {
    $.ajax({
        type: "POST",
        url: `/shopping_car_item_del`,
        data: `SKU_code=${SKU_code}`,
        success: function(data){
            if (data==='success') {
                console.log('item delete success');
            }else {
                console.log('get wrong data');
            }
        }
    });
}
