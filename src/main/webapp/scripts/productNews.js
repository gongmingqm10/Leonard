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