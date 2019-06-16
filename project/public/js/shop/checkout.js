var targetAddr;//目标地址jqueyr
const addrInFooter=$("#addrInFooter");//footer的地址
$(function () {
    $(".addr_item").on('click', (e) => {
        $(".addr_item").removeClass('checked');

        if ($(e.target).hasClass('addr_item')) {
            targetAddr=$(e.target);
            targetAddr.addClass('checked');
            addrInFooter.html(()=>{return targetAddr.children('p:first-of-type').html()});
            console.log(targetAddr.attr('addr'));

        } else {
            targetAddr=$(e.target).parents('.addr_item');
            targetAddr.addClass('checked');
            addrInFooter.html(()=>{return targetAddr.children('p:first-of-type').html()});

        }
    });
    $('.fa-trash-o').on('click', (e) => {
        $(e.target).parents('.addr_item').remove();
    });
    $('.fa-edit').on('click', () => {
        $('#myAddress').modal('toggle');
    });
    $(".checkout_footer").find('button').on('click',(e)=>{
        console.log(this);
        $.ajax({
            type: "POST",
            url: `/send_addr_id`,
            data: `addr_id=${targetAddr.attr('addr')}`,
            success: function(data){
                if (data) {
                    console.log(data);
                    goToPay(data[0]);
                }else {
                    location.href='/404.html';
                }
            }
        })
    })
});

function goToPay(params) {
    let tempForm=$(`
        <form action="/go_to_pay" method="post">
        <input type="text" name="order_id" value="${params.order_id}">
        </form>
        `);
    tempForm.css({'display':'none'});
    $("body").append(tempForm);
    console.log(tempForm);
    tempForm[0].submit();
}