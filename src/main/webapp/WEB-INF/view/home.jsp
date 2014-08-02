<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="首页"/>

<link rel="stylesheet" href="style/home.css" type="text/css"/>
<script type="text/javascript" src="scripts/home.js"></script>

<%@ include file="home/carousel.jsp"%>
<div class="container" >
    <div class="panel panel-default text-center" id="panel-find">
      <div class="panel-heading">
        <h3 class="panel-title">寻找经销商</h3>
      </div>
      <div class="panel-body">
        <p>为迎合广大爱好者以及发烧友。北极猫特开设新的活动项目。请大家敬请期待。关注北极猫官方网站014年6月6日，经过近半个月数千公里的大漠征途，第十届中国环塔（国际）拉力赛在哈密落下帷幕。漫长的赛道，激烈的角逐，一半以上的惨烈淘汰，都在展示着环塔的伟大！</p>
        <p><a class="btn btn-primary btn-lg" role="button">寻找经销商</a></p>
      </div>
    </div>
    <nav class="navbar navbar-inverse" role="navigation">
        <div class="navbar-header" style="margin:9px;">
          <h5 style="color:white;">&nbsp;&nbsp;&nbsp;查看当前和过去车型</h5>
        </div>
        <div class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" role="form">
             <label class="checkbox-inline">
              <input type="radio" name="optionsRadiosinline" id="optionsRadios3"
                 value="option1" checked>
              <i class="glyphicon glyphicon-glass" style="color:white;">
                SLEDS</i>
            </label>
            <label class="checkbox-inline">
             <input type="radio" name="optionsRadiosinline" id="optionsRadios4"
                value="option2">
             <i class="glyphicon glyphicon-music" style="color:white;">
                ATVX</i>
            </label>
            <label class="checkbox-inline">
             <input type="radio" name="optionsRadiosinline" id="optionsRadios4"
                value="option2">
             <i class="glyphicon glyphicon-star" style="color:white;">
                SXS&nbsp&nbsp;</i>
            </label>
            <div class="btn-group ">
              <button class="btn btn-default " > 选择年份</button>
              <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu" role="menu" style="width:150;">
                <li>2015</li>
                <li>2014</li>
                <li>2013</li>
                <li>2012</li>
                <li>2011</li>
               </ul>
            </div>
            &nbsp;&nbsp;&nbsp;
            <button type="submit" class="btn btn-success ">&nbsp;查看车型&nbsp;</button>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
          </form>
        </div>
    </nav>
    <div id="content">
        <h2 class="social-header">俱乐部活动</h2>
        <hr style="margin:0 0 30px;">
        <div class="row text-center">
            <c:forEach var="video" items="${videos}" varStatus="row">
                 <div class="col-md-3 social-border">
                     <a href="video/play/${video.id}"><img src="${video.image}" alt=""></a>
                 </div>
            </c:forEach>

        </div>
        <br>
        <hr style="margin:10px 0 30px;">
        <div class="text-center">
            <a href="video/" class="btn btn-default btn-lg text-center" role="button">更多信息</a>
        </div>
        <br>
    </div>



    <form name="playVideoById" method="post" action='video/play' >
         <input type="hidden" id="videoIdToPlay" name="videoIdToPlay" value="" >
    </form>
</div>
<%@ include file="footer.jsp" %>
