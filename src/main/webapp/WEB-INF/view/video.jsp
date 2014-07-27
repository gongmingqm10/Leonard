<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="俱乐部活动"/>
<link rel="stylesheet" href="style/home.css" type="text/css"/>
<link rel="stylesheet" href="style/video-js.css" rel="stylesheet">
<link rel="stylesheet" href="style/video.css" rel="stylesheet">
<script type="text/javascript" src="scripts/video.js"></script>

<div class="container top-view">
    <video id="MY_VIDEO_1" class="video-js vjs-default-skin vjs-big-play-centered" controls
        preload="auto" width="640" height="264" poster="${video.image}"
        data-setup="{}">
        <source src="${video.source}" type='video/mp4'>
        <p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
    </video>

    <ul class="nav nav-tabs" role="tablist">
      <li role="presentation" class="active"><a href="javascript:void(0);">摩托车</a></li>
      <li role="presentation"><a href="javascript:void(0);">全地形车</a></li>
      <li role="presentation"><a href="javascript:void(0);">游艇</a></li>
      <li role="presentation"><a href="javascript:void(0);">综合</a></li>
    </ul>
    <div class="video-container">
        <c:forEach var="video" items="${videos}" varStatus="row">
            <div class="col-md-3 video-item">
                <a href="video/play/${video.id}"><img src="${video.image}" alt=""></a>
                <p>${video.filename}</p>
                <p><span class="glyphicon glyphicon-play">${video.scan}</span> &nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-comment">3</span></p>
            </div>
        </c:forEach>
        <div class="col-md-3 video-item">
            <img src="images/video/car2.jpg">
            <p>春风铁马铁马冰河环渤海</p>
            <p><span class="glyphicon glyphicon-play">200</span> &nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-comment">3</span></p>
        </div>
        <div class="col-md-3 video-item">
                <img src="images/video/car4.jpg">
                <p>俄罗斯美女骑春风650NK</p>
                <p><span class="glyphicon glyphicon-play">200</span> &nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-comment">3</span></p>
        </div>
        <div class="col-md-3 video-item">
                <img src="images/video/car5.jpg">
                <p>春风650NK、领跑王、捷马赛道风采 老外也爱玩飙车</p>
                <p><span class="glyphicon glyphicon-play">200</span> &nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-comment">3</span></p>
        </div>
        <div class="col-md-3 video-item">
                <img src="images/video/car7.jpg">
                <p>2013重庆摩博会骑行中国</p>
                <p><span class="glyphicon glyphicon-play">200</span> &nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-comment">3</span></p>
        </div>

    </div>

    <div class="text-center pagination-container">
        <ul class="pagination">
          <li><a href="#">&laquo;</a></li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#">&raquo;</a></li>
        </ul>

    </div>

</div>
<%@ include file="footer.jsp"%>