function mySubmit(id){

    if (id==null) id=-1;
    var e1 = document.getElementById("color1");
    var colorName1= e1.options[e1.selectedIndex].text;
    var e2 = document.getElementById("color2");
    var colorName2= e2.options[e2.selectedIndex].text;
    var e3 = document.getElementById("color3");
    var colorName3= e3.options[e3.selectedIndex].text;
    var e4 = document.getElementById("color4");
    var colorName4= e4.options[e4.selectedIndex].text;
    var e5 = document.getElementById("color5");
    var colorName5= e5.options[e5.selectedIndex].text;
    var colorName=colorName1+","+colorName2+","+colorName3+","+colorName4+","+colorName5;

    var e1 = document.getElementById("image1Url");
    if(e1==null)  var url1= "";
    else var url1= $(e1).val();
    var e2 = document.getElementById("image2Url");
    if(e2==null)  var url2= "";
    else var url2= $(e2).val();
    var e3 = document.getElementById("image3Url");
    if(e3==null)  var url3= "";
    else var url3= $(e3).val();
    var e4 = document.getElementById("image4Url");
    if(e4==null)  var url4= "";
    else var url4= $(e4).val();
    var e5 = document.getElementById("image5Url");
    if(e5==null)  var url5= "";
    else var url5= $(e5).val();
    var url=url1+","+url2+","+url3+","+url4+","+url5;

    var form= document.getElementById("product-form");
    var hiddenField = document.createElement("input");
    hiddenField.setAttribute("name", "colorName");
    hiddenField.setAttribute("value", colorName);
    hiddenField.setAttribute("type", "hidden");
    form.appendChild(hiddenField);

    var hiddenField = document.createElement("input");
    hiddenField.setAttribute("name", "id");
    hiddenField.setAttribute("value", id);
    hiddenField.setAttribute("type", "hidden");
    form.appendChild(hiddenField);

    var hiddenField = document.createElement("input");
    hiddenField.setAttribute("name", "url");
    hiddenField.setAttribute("value", url1+","+url2+","+url3+","+url4+","+url5);
    hiddenField.setAttribute("type", "hidden");
    form.appendChild(hiddenField);

    form.submit;

}

function uploads(i){
     var e=document.getElementById("image"+i);
     var file_data, form_data;
     var productName=$('#productName').val();
     file_data = $(e).prop('files')[0];
     form_data = new FormData();
     form_data.append("file", file_data);
     form_data.append("productName",productName)
     form_data.append("id",i)
     $.ajax({
       url: "product/upload",
       dataType: 'json',
       cache: false,
       contentType: false,
       processData: false,
       crossdomain: true,
       data: form_data,
       type: 'post',
       success: function(data) {
            var e=document.getElementById("image"+data[0]+"Url");
            $(e).val(data[1]);
       },
       error: function(data) {
           console.log("upload error" + data);
       },
       complete: function() {console.log("upload complete");},
     });
}

function clearText(i){
    var e=document.getElementById("image"+i);
    e.value="";
    var e1=document.getElementById("image"+i+"Url");
    e1.value="";
}
