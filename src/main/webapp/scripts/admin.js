
$(function () {
    $("td").dblclick(function () {
        var OriginalContent = $(this).text();
          
        $(this).addClass("cellEditing");
        $(this).html("<input type='text' value='" + OriginalContent + "' />");
        $(this).children().first().focus();
  
        $(this).children().first().keypress(function (e) {
            if (e.which == 13) {
                $(this).parent().removeClass("cellEditing");
                $(this).parent().addClass("cellEdited");
                var newContent = $(this).val();
                $(this).parent().text(newContent);

            }
        });
          
        $(this).children().first().blur(function(){
            $(this).parent().removeClass("cellEditing");
            $(this).parent().text(OriginalContent);
        });
    });
});