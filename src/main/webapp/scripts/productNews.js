function selectTag(e,image,colorName){
    $(e).addClass("selectTag");
    $(e).parent().siblings().children().removeClass('selectTag');

    var img=document.getElementById("product-img");
    img.setAttribute("src",image);
    var p=document.getElementById("product-title-p");
    var originalText=$(p).text();
    originalText=originalText.slice(0, originalText.indexOf("("));
    $(p).text(originalText+"("+colorName+")");
}


function switchItem(e,i,id) {
    var element = $(e);
    element.parent().addClass('active');
    element.parent().siblings().removeClass('active');
//    document.getElementById("product-content").innerHTML = "";
    var form_data;
    form_data = new FormData();
    form_data.append("id",id);
     $.ajax({
           url: "product/productNews",
           dataType: 'json',
           cache: false,
           contentType: false,
           processData: false,
           crossdomain: true,
           data: form_data,
           type: 'post',
           success: function(data) {
                    document.getElementById("product-content").innerHTML =data[i];
           },
           error: function(data) {
               console.log("get data error" + data);
           },
           complete: function() {console.log("get data complete");},
         });
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

jQuery(document).scroll(function(){
if(jQuery(this).scrollTop() > 890){
    jQuery('.sticky-nav-container').css('display','');
    jQuery('.sticky-nav-container').css('position','fixed');
    jQuery('.sticky-nav-container').css('top','0');
    jQuery('.sticky-nav-container').css('z-index','100');
}else{
    jQuery('.sticky-nav-container').css('display','none');
}
});