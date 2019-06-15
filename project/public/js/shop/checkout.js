$(function () {
    $(".addr_item").on('click', (e) => {
        $(".addr_item").removeClass('checked');

        if ($(e.target).hasClass('addr_item')) {
            $(e.target).addClass('checked');
        } else {
            $(e.target).parents('.addr_item').addClass('checked');
        }
    });
    $('.fa-trash-o').on('click', (e) => {
        $(e.target).parents('.addr_item').remove();
    });
    $('.fa-edit').on('click', () => {
        console.log(111);
        $('#myAddress').modal('toggle');
    })
});