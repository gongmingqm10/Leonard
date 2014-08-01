<%@ include file="admin.jsp" %>
 <link rel="stylesheet" href="style/backend/product.css" type="text/css"/>
 <script type="text/javascript" src="scripts/backend/product.js"></script>


            <a href="admin/product/create"><button type="button" class="btn btn-primary" >添加产品</button></a>

            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">产品管理</h3>
              </div>
              <div class="panel-body">
                <div class="product-table">
                    <table class="table table-bordered">
                       <thead >
                          <tr>
                             <th class="text-center">编号</th>
                             <th class="text-center">产品名</th>
                             <th class="text-center">类型</th>
                             <th class="text- center">子类型</th>
                             <th class="text-center">产品信息</th>
                             <th class="text-center">操作</th>
                          </tr>
                       </thead>
                       <tbody>
                          <c:forEach var="product" items="${products}" varStatus="row">
                              <tr>
                                  <td class="number"><c:out value="${product.number}"/></td>
                                  <td class="productName"><c:out value="${product.productName}"/></td>
                                  <td class="type"><c:out value="${product.type}"/></td>
                                  <td class="subType"><c:out value="${product.subType}"/></td>
                                  <td class="product-info"><c:out value="${product.productInfo}"/></td>
                                  <td class="action">
                                    <a href="admin/product/edit/${product.id}"><button type="button" class="btn btn-default" >编辑</button></a>
                                    <button type="button" class="btn btn-default" onclick="deleteProduct(${product.id});">删除</button>
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