<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="首页"/>

<link rel="stylesheet" href="style/home.css" type="text/css"/>
<%@ include file="home/carousel.jsp"%>
<div class="container" >
    <div class="panel panel-default text-center" id="panel-find">
      <div class="panel-heading">
        <h3 class="panel-title">Find a Dealer</h3>
      </div>
      <div class="panel-body">
        <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
        <p><a class="btn btn-primary btn-lg" role="button">FIND A DEALER</a></p>
      </div>
    </div>
    <nav class="navbar navbar-inverse" role="navigation">
        <div class="navbar-header" style="margin:9px;">
          <h5 style="color:white;">&nbsp;&nbsp;&nbsp;VIEW CURRENT & PAST MODELS</h5>
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
              <button class="btn btn-default " >Select Year</button>
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
            <button type="submit" class="btn btn-success ">&nbsp;View Models&nbsp;</button>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
          </form>
        </div>
    </nav>
    <div id="content">
        <h2 class="social-header">Arctic Cat Social</h2>
        <hr style="margin:0 0 30px;">
        <div class="row text-center">
            <c:forEach var="video" items="${videos}" varStatus="row">
                 <div class="col-md-3 social-border">
                     <a href="video/play/${video.id}"><img src="${video.image}" alt=""></a>
                 </div>
            </c:forEach>

            <div class="col-md-3 social-border">
                <img src="images/video/car7.jpg" alt="">
            </div>
            <div class="col-md-3 social-border">
                <img src="images/video/car8.png" alt="">
            </div>
            <div class="col-md-3 social-border">
                <img src="images/video/car2.jpg" alt="">
            </div>
        </div>
        <br>
        <hr style="margin:10px 0 30px;">
        <div class="text-center">
            <a href="video/" class="btn btn-default btn-lg text-center" role="button">VIEW MORE</a>
        </div>
        <br>
    </div>


    <script type="text/javascript">
    function playVideo(VideoId)
    {
        document.playVideoById.videoIdToPlay.value = VideoId;
        document.playVideoById.submit();
    }

    </script>
    <form name="playVideoById" method="post" action='video/play' >
         <input type="hidden" id="videoIdToPlay" name="videoIdToPlay" value="" >
    </form>
</div>
<%@ include file="footer.jsp" %>
