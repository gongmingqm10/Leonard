<%@ include file="admin.jsp" %>

 <link rel="stylesheet" href="style/backend/dealer.css" type="text/css"/>
<script type="text/javascript" src="scripts/backend/dealer.js"></script>

            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">经销商管理</h3>
              </div>
              <div class="panel-body">
                <div class="dealer-table">
                    <table class="table table-bordered">
                       <thead >
                          <tr>
                             <th class="text-center">分销商名称</th>
                             <th class="text-center">类型</th>
                             <th class="text-center">销售人员</th>
                             <th class="text-center">销售热线</th>
                             <th class="text-center">地址</th>
                             <th class="text-center">操作</th>
                          </tr>
                       </thead>
                       <tbody>
                          <c:forEach var="dealer" items="${dealers}" varStatus="row">
                              <tr>
                                  <td class="name"><c:out value="${dealer.dealerName}"/></td>
                                  <td class="type"><c:out value="${dealer.type}"/></td>
                                  <td class="saler"><c:out value="${dealer.salerName}"/></td>
                                  <td class="phone"><c:out value="${dealer.phone}"/></td>
                                  <td class="address"><c:out value="${dealer.address}"/></td>
                                  <td class="action">
                                    <button type="button" class="btn btn-default" disabled="disabled" onclick="updateItem(${dealer.id}, this);">保存</button>
                                    <button type="button" class="btn btn-default" onclick="deleteItem(${dealer.id});">删除</button>
                                  </td>
                              </tr>
                          </c:forEach>
                       </tbody>
                    </table>
                </div>
              </div>
            </div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">经销商管理</h3>
              </div>
              <div class="panel-body">
                <div class="dealer-table">
                    <table class="table table-bordered">
                       <thead >
                          <tr>
                             <th class="text-center">分销商名称</th>
                             <th class="text-center">类型</th>
                             <th class="text-center">销售人员</th>
                             <th class="text-center">销售热线</th>
                             <th class="text-center">地址</th>
                             <th class="text-center">省份</th>
                             <th class="text-center">操作</th>
                          </tr>
                       </thead>
                       <tbody>
                            <tr>
                                <td class="name"></td>
                                <td class="type"></td>
                                <td class="saler"></td>
                                <td class="phone"></td>
                                <td class="address"></td>
                                <td class="province"></td>
                                <td class="action">
                                  <button type="button" class="btn btn-default" disabled="disabled" onclick="addItem(this);">确定</button>
                                </td>
                            </tr>
                       <tbody>
                    </table>
                </div>
              </div>
            </div>


        </div>
    </div>
<%@ include file="../footer.jsp" %>