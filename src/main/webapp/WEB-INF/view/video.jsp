<%@ include file="header.jsp" %>
<link rel="stylesheet" href="style/home.css" type="text/css"/>
<link rel="stylesheet" href="style/video-js.css" rel="stylesheet">
<link rel="stylesheet" href="style/video.css" rel="stylesheet">
<script type="text/javascript" src="scripts/video.js"></script>
<div class="container top-view">

    <video id="MY_VIDEO_1" class="video-js vjs-default-skin" controls
     preload="auto" width="640" height="264" poster="images/video/car8.png"
     data-setup="{}">
     <source src="http://vjs.zencdn.net/v/oceans.mp4" type='video/mp4'>
     <p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
    </video>

</div>
<%@ include file="footer.jsp"%>