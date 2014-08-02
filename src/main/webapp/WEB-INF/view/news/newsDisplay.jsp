<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="新闻中心"/>
<link rel="stylesheet" href="style/news.css" type="text/css"/>
<link rel="stylesheet" href="style/newsDisplay.css" type="text/css"/>
<script type="text/javascript" src="scripts/news.js"></script>


<div class="pageBox">
    <div class="lv_treeBox container">
        <div class="lv_tree">
            <p class="columnTitle">新闻中心</p>
            <div class="lv_tree_con">
                 当前位置：<a href="javascript:void(0);">首页</a>&nbsp;-&nbsp;<a href="javascript:void(0);">企业新闻</a>
            </div>
         </div>
    </div>
    <div class="pageContent container">
        <div class="pageLeft collapse navbar-collapse col-md-3">
            <ul class="nav nav-pills nav-stacked" role="tablist">
                 <li role="presentation" class="active"><a href="javascript:void(0);">企业新闻</a></li>
            </ul>
        </div>
        <div class="pageRight col-md-9 newsContext">
             <div class="title">
                <h3>${news.title} </h3>
                 <span style=" float:none; padding-right:10px">发布人：CFMOTO春风动力</span>
                 时间：${news.date}&nbsp;&nbsp;&nbsp;浏览次数：237
             </div>
             ${news.content}

        </div>

    </div>
</div>



<%@ include file="../footer.jsp" %>