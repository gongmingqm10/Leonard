$(function () {
    var path = window.location.pathname.split('/').pop();
    console.log(path);
    var children=$(document.getElementById("menu-ul")).children();
    for (var i in children) {
        console.log(children[i].className);
        if(children[i].className === path){
            $(children[i]).addClass("active");
        }
    }
} );