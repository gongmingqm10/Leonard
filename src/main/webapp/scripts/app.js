function showPanel(e) {
    var element = $(e);
    element.parent().addClass('active');
    element.parent().siblings().removeClass('active');
    var content = $(element.attr('target-content'))
    content.siblings('.nav-content').slideUp('fast', function(){});
    if (content.is(':visible')) {
        content.slideUp('fast', function(){});
    } else {
        content.slideDown('slow', function(){});
    }
}