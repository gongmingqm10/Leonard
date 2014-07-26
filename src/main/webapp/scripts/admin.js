
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
                $(this).parent().parent().children().last().children().first().removeAttr('disabled');
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

function updateItem(id, element){
        var element=$(element);

        var r=confirm("是否确定修改此记录?");
        if (r==true)
        {
            $(element).attr('disabled','disabled');
            var children=$(element).parent().parent().children();

            var form = document.createElement("form");
            form.setAttribute("action", "dealer/update");
            form.setAttribute("method", "UPDATE");

            var hiddenDealer = document.createElement("input");
            hiddenDealer.setAttribute("name", "id");
            hiddenDealer.setAttribute("value", id);
            hiddenDealer.setAttribute("type", "hidden");
            form.appendChild(hiddenDealer);

            var str=$(children[0]).text();
            var hiddenDealer = document.createElement("input");
            hiddenDealer.setAttribute("name", "dealer");
            hiddenDealer.setAttribute("value", $(children[0]).text());
            hiddenDealer.setAttribute("type", "hidden");
            form.appendChild(hiddenDealer);

            var hiddenDealer = document.createElement("input");
            hiddenDealer.setAttribute("name", "type");
            hiddenDealer.setAttribute("value", $(children[1]).text());
            hiddenDealer.setAttribute("type", "hidden");
            form.appendChild(hiddenDealer);

            var hiddenDealer = document.createElement("input");
            hiddenDealer.setAttribute("name", "saler");
            hiddenDealer.setAttribute("value", $(children[2]).text());
            hiddenDealer.setAttribute("type", "hidden");
            form.appendChild(hiddenDealer);


            var hiddenDealer = document.createElement("input");
            hiddenDealer.setAttribute("name", "phone");
            hiddenDealer.setAttribute("value", $(children[3]).text());
            hiddenDealer.setAttribute("type", "hidden");
            form.appendChild(hiddenDealer);


            var hiddenDealer = document.createElement("input");
            hiddenDealer.setAttribute("name", "address");
            hiddenDealer.setAttribute("value", $(children[4]).text());
            hiddenDealer.setAttribute("type", "hidden");
            form.appendChild(hiddenDealer);

            document.body.appendChild(form);
            form.submit();
        }
}