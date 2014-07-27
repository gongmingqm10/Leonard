$(function () {
    var path = window.location.pathname.split('/').pop();
    var children=$(document.getElementById("menu-ul")).children();
    for (var i in children) {
        if(children[i].className === path){
            $(children[i]).addClass("active");
        }
    }
} );