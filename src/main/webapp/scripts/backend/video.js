function deleteVideo(id) {
    var r=confirm("是否确定删除此记录?");
    if (r==true)
    {
        var form = document.createElement("form");
        form.setAttribute("action", "video/delete")
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

function readURL(input) {
    var fileName = $(input).val();
    if(!(fileName.lastIndexOf("mp4")===fileName.length-3)){
        input.value="";
        alert("仅支持mp4格式视频！");
    }
}
function readPicURL(input) {
    var fileName = $(input).val();
    if(!(fileName.lastIndexOf("jpg")===fileName.length-3)){
        input.value="";
        alert("仅支持jpg格式视频！");
    }
}