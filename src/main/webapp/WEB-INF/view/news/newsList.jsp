<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="新闻中心"/>
<link rel="stylesheet" href="style/news.css" type="text/css"/>


<div class="pageBox">
    <div class="lv_treeBox container">
        <div class="lv_tree">
            <p class="columnTitle">新闻中心</p>
            <div class="lv_tree_con">
                 当前位置：<a href="">首页</a>&nbsp;-&nbsp;企业新闻
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
              <c:forEach var="news" items="${newsList}" varStatus="row">
                  <div class="media-body">
                    <span>${news.date}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    <a href="news/newsDisplay/${news.id}"><span class="media-heading">${news.title}</span></a>

                    <div class="news-content">${news.content}</div>
                  </div>
              </c:forEach>
            </div>
        </div>

    </div>
</div>



<%@ include file="../footer.jsp" %>