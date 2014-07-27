<%@ include file="admin.jsp" %>
 <link rel="stylesheet" href="style/backend/video.css" type="text/css"/>
 <script type="text/javascript" src="scripts/backend/video.js"></script>


            <button type="button" class="btn btn-primary" onclick="location.href='admin/video/create'" >添加视频</button>

            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">视频管理</h3>
              </div>
              <div class="panel-body">
                <div class="video-table">
                    <table class="table table-bordered">
                       <thead >
                          <tr>
                             <th class="text-center">视频名称</th>
                             <th class="text-center">视频地址</th>
                             <th class="text-center">缩略图地址</th>
                             <th class="text-center">播放次数</th>
                             <th class="text-center">操作</th>
                          </tr>
                       </thead>
                       <tbody>
                          <c:forEach var="video" items="${videos}" varStatus="row">
                              <tr>
                                  <td class="filename"><c:out value="${video.filename}"/></td>
                                  <td class="source"><c:out value="${video.source}"/></td>
                                  <td class="image"><c:out value="${video.image}"/></td>
                                  <td class="scan"><c:out value="${video.scan}"/></td>
                                  <td class="action">
                                    <button type="button" class="btn btn-default" onclick="deleteVideo(${video.id});">删除</button>
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