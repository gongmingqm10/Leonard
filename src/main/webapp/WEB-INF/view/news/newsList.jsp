<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="新闻中心"/>
<link rel="stylesheet" href="style/news.css" type="text/css"/>
<script type="text/javascript" src="scripts/news.js"></script>


<div class="pageBox">
    <div class="lv_treeBox container">
        <div class="lv_tree">
            <p class="columnTitle">新闻中心</p>
            <div class="lv_tree_con">
                 当前位置：<a href="javascript:void(0);">首页</a>&nbsp;-&nbsp;<a href="javascript:void(0);">企业新闻</a>&nbsp;-&nbsp;<span>经销商网络</span>
            </div>
         </div>
    </div>
    <div class="pageContent container">
        <div class="pageLeft collapse navbar-collapse col-md-3">
            <ul class="nav nav-pills nav-stacked" role="tablist">
                 <li role="presentation" class="active"><a href="javascript:void(0);">企业新闻</a></li>
            </ul>
        </div>
        <div class="pageRight col-md-9">
            <div class="media news-list">
              <a class="pull-left" href="javascript:void(0);">
                <img class="media-object" src="images/news/news-head.jpg" alt="...">
              </a>
              <div class="media-body">
                <a href="news/newsDisplay"><h4 class="media-heading">Media heading</h4></a>
                这是一些示例文本。这是一些示例文本。
                      这是一些示例文本。这是一些示例文本。
                      这是一些示例文本。这是一些示例文本。
                      这是一些示例文本。这是一些示例文本。
                      这是一些示例文本。这是一些示例文本。
              </div>
            </div>
            <div class="media news-list">
              <a class="pull-left" href="#">
                <img class="media-object" src="images/news/news-head.jpg" alt="...">
              </a>
              <div class="media-body">
                <h4 class="media-heading">Media heading</h4>
                这是一些示例文本。这是一些示例文本。
                      这是一些示例文本。这是一些示例文本。
                      这是一些示例文本。这是一些示例文本。
                      这是一些示例文本。这是一些示例文本。
                      这是一些示例文本。这是一些示例文本。
              </div>
            </div>
            <div class="media news-list">
              <a class="pull-left" href="#">
                <img class="media-object" src="images/news/news-head.jpg" alt="...">
              </a>
              <div class="media-body">
                <h4 class="media-heading">Media heading</h4>
                这是一些示例文本。这是一些示例文本。
                      这是一些示例文本。这是一些示例文本。
                      这是一些示例文本。这是一些示例文本。
                      这是一些示例文本。这是一些示例文本。
                      这是一些示例文本。这是一些示例文本。
              </div>
            </div>
        </div>

    </div>
</div>



<%@ include file="../footer.jsp" %>