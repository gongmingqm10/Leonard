$(function () {
    var path = window.location.pathname.split('/');
    var children=$(document.getElementById("menu-ul")).children();
    for (var i in children) {
        for(var j in path){
            if(children[i].className === path[j]){
                $(children[i]).addClass("active");
            }
        }
    }
} );