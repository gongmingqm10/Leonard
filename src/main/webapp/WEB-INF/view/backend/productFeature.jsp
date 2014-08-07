<%@ include file="admin.jsp" %>
 <link rel="stylesheet" href="style/backend/productNews.css" type="text/css"/>
 <script type="text/javascript" src="scripts/backend/productNews.js"></script>

              <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">产品亮点管理</h3>
              </div>
              <div class="panel-body">
                <div class="product-table">
                    <table class="table table-bordered">
                       <thead >
                          <tr>
                             <th class="text-center">产品名</th>
                             <th class="text-center">产品亮点</th>
                             <th class="text-center">操作</th>
                          </tr>
                       </thead>
                       <tbody>
                          <c:forEach var="productRE" items="${productREs}" varStatus="row">
                              <tr>
                                  <td class="productName"><c:out value="${productRE.productName}"/></td>
                                  <td class="productNews"><c:out value="${productRE.productFeature}"/></td>
                                  <td class="action">
                                    <a href="admin/productFeature/editFeature/${productRE.id}"><button type="button" class="btn btn-default" >编辑</button></a>
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