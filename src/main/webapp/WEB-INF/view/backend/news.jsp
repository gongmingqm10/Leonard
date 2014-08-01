<%@ include file="admin.jsp" %>
 <link rel="stylesheet" href="style/backend/news.css" type="text/css"/>
 <script type="text/javascript" src="scripts/backend/news.js"></script>


            <a href="admin/news/create"><button type="button" class="btn btn-primary" >添加新闻</button></a>

            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">新闻管理</h3>
              </div>
              <div class="panel-body">
                <div class="news-table">
                    <table class="table table-bordered">
                       <thead >
                          <tr>
                             <th class="text-center">标题</th>
                             <th class="text-center">内容</th>
                             <th class="text-center">时间</th>
                             <th class="text-center">浏览次数</th>
                             <th class="text-center">操作</th>
                          </tr>
                       </thead>
                       <tbody>
                          <c:forEach var="news" items="${newsList}" varStatus="row">
                              <tr>
                                  <td class="title"><c:out value="${news.title}"/></td>
                                  <td class="content"><c:out value="${news.content}"/></td>
                                  <td class="date"><c:out value="${news.date}"/></td>
                                  <td class="scan"><c:out value="${news.scan}"/></td>
                                  <td class="action">
                                    <a href="admin/news/edit/${news.id}"><button type="button" class="btn btn-default" >编辑</button></a>
                                    <button type="button" class="btn btn-default" onclick="deleteNews(${news.id});">删除</button>
                                  </td>
                              </tr>
                          </c:forEach>
                       </tbody>
                    </table>
                </div>
              </div>
            </div>

        </div>
    </div>
<%@ include file="../footer.jsp" %>