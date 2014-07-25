
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

function deleteItem(id) {
    console.log("I will delete " + id);
    var r=confirm("是否确定删除此记录?");
    if (r==true)
    {
        var form = document.createElement("form");
        form.setAttribute("action", "dealer/delete")
        form.setAttribute("method", "DELETE");
        var hiddenField = document.createElement("input");
        hiddenField.setAttribute("name", "id");
        hiddenField.setAttribute("value", id);
        hiddenField.setAttribute("type", "hidden");
        form.appendChild(hiddenField);
        document.body.appendChild(form);
        form.submit();
    }
}
