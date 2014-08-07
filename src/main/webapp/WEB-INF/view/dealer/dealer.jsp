<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="经销商"/>
<link rel="stylesheet" href="style/dealer.css" type="text/css"/>
<script type="text/javascript" src="scripts/dealer.js"></script>

<div class="pageBox">
    <div class="lv_treeBox container">
        <div class="lv_tree">
            <p class="columnTitle">经销商</p>
            <div class="lv_tree_con">
                 当前位置：<a href="javascript:void(0);">首页</a>&nbsp;-&nbsp;<a href="javascript:void(0);">经销商</a>&nbsp;-&nbsp;<span>经销商网络</span>
            </div>
         </div>
    </div>
    <div class="pageContent container">
        <div class="pageLeft collapse navbar-collapse col-md-3">
            <ul class="nav nav-pills nav-stacked" role="tablist">
                 <li role="presentation" class="active"><a href="javascript:void(0);">经销商网络</a></li>
            </ul>
        </div>
        <div class="pageRight col-md-9">
            <p class="pageName">经销商网络</p>
            <div class="mapBox">
                <ul class="list-unstyled">
                <li>
                    <button type="button" class="btn point p02" data-toggle="popover"
                        data-trigger="hover" data-placement="left" data-html="true"
                        title="<h3>吉林</h3>" data-content="
                            <c:forEach var="dealer" items="${dealers}" varStatus="row">
                            <c:if test= "${dealer.province == '吉林'}" >
                            ${dealer.dealerName}
                            <br>联系人:${dealer.salerName}
                            <br>联系电话：${dealer.phone}<br>
                            </c:if>
                            </c:forEach>
                        ">
                        吉林
                    </button>
                    <button type="button" class="btn point p03" data-toggle="popover"
                        data-trigger="hover" data-placement="left" data-html="true"
                        title="<h3>北京</h3>" data-content="
                            <c:forEach var="dealer" items="${dealers}" varStatus="row">
                            <c:if test= "${dealer.province == '北京'}" >
                            ${dealer.dealerName}
                            <br>联系人:${dealer.salerName}
                            <br>联系电话：${dealer.phone}<br>
                            </c:if>
                            </c:forEach>
                        ">
                        北京
                    </button>
                    <button type="button" class="btn point p04" data-toggle="popover"
                        data-trigger="hover" data-placement="left" data-html="true"
                        title="<h3>河北</h3>" data-content="
                            <c:forEach var="dealer" items="${dealers}" varStatus="row">
                            <c:if test= "${dealer.province == '河北'}" >
                            ${dealer.dealerName}
                            <br>联系人:${dealer.salerName}
                            <br>联系电话：${dealer.phone}<br>
                            </c:if>
                            </c:forEach>
                        ">
                        河北
                    </button>
                    <button type="button" class="btn point p05" data-toggle="popover"
                        data-trigger="hover" data-placement="left" data-html="true"
                        title="<h3>陕西</h3>" data-content="
                            <c:forEach var="dealer" items="${dealers}" varStatus="row">
                                <c:if test= "${dealer.province == '陕西'}" >
                                ${dealer.dealerName}
                                <br>联系人:${dealer.salerName}
                                <br>联系电话：${dealer.phone}<br>
                                </c:if>
                                </c:forEach>
                        ">
                        陕西
                    </button>
                    <button type="button" class="btn point p06" data-toggle="popover"
                        data-trigger="hover" data-placement="left" data-html="true"
                        title="<h3>上海</h3>" data-content="
                            <c:forEach var="dealer" items="${dealers}" varStatus="row">
                            <c:if test= "${dealer.province == '上海'}" >
                            ${dealer.dealerName}
                            <br>联系人:${dealer.salerName}
                            <br>联系电话：${dealer.phone}<br>
                            </c:if>
                            </c:forEach>
                        ">
                        上海
                    </button>
                    <button type="button" class="btn point p07" data-toggle="popover"
                        data-trigger="hover" data-placement="left" data-html="true"
                        title="<h3>成都</h3>" data-content="
                            <c:forEach var="dealer" items="${dealers}" varStatus="row">
                            <c:if test= "${dealer.province == '四川'}" >
                            ${dealer.dealerName}
                            <br>联系人:${dealer.salerName}
                            <br>联系电话：${dealer.phone}<br>
                            </c:if>
                            </c:forEach>
                        ">
                        四川
                    </button>
                    <button type="button" class="btn point p08" data-toggle="popover"
                        data-trigger="hover" data-placement="left" data-html="true"
                        title="<h3>云南</h3>" data-content="
                            <c:forEach var="dealer" items="${dealers}" varStatus="row">
                            <c:if test= "${dealer.province == '云南'}" >
                            ${dealer.dealerName}
                            <br>联系人:${dealer.salerName}
                            <br>联系电话：${dealer.phone}<br>
                            </c:if>
                            </c:forEach>
                        ">
                        云南
                    </button>
                    <button type="button" class="btn point p09" data-toggle="popover"
                        data-trigger="hover" data-placement="left" data-html="true"
                        title="<h3>广东</h3>" data-content="
                            <c:forEach var="dealer" items="${dealers}" varStatus="row">
                            <c:if test= "${dealer.province == '广东'}" >
                            ${dealer.dealerName}
                            <br>联系人:${dealer.salerName}
                            <br>联系电话：${dealer.phone}
                            </c:if>
                            </c:forEach>
                        ">
                        广东
                    </button>
                    <button type="button" class="btn point p10" data-toggle="popover"
                        data-trigger="hover" data-placement="left" data-html="true"
                        title="<h3>新疆</h3>" data-content="
                            <c:forEach var="dealer" items="${dealers}" varStatus="row">
                            <c:if test= "${dealer.province == '新疆'}" >
                            ${dealer.dealerName}
                            <br>联系人:${dealer.salerName}
                            <br>联系电话：${dealer.phone}
                            </c:if>
                            </c:forEach>
                        ">
                        新疆
                    </button>
                    <button type="button" class="btn point p11" data-toggle="popover"
                        data-trigger="hover" data-placement="left" data-html="true"
                        title="<h3>辽宁</h3>" data-content="
                            <c:forEach var="dealer" items="${dealers}" varStatus="row">
                                <c:if test= "${dealer.province == '辽宁'}" >
                                ${dealer.dealerName}
                                <br>联系人:${dealer.salerName}
                                <br>联系电话：${dealer.phone}<br>
                                </c:if>
                                </c:forEach>
                        ">
                        辽宁
                    </button>
                    <button type="button" class="btn point p12" data-toggle="popover"
                        data-trigger="hover" data-placement="left" data-html="true"
                        title="<h3>海南</h3>" data-content="
                            <c:forEach var="dealer" items="${dealers}" varStatus="row">
                                <c:if test= "${dealer.province == '海南'}" >
                                ${dealer.dealerName}
                                <br>联系人:${dealer.salerName}
                                <br>联系电话：${dealer.phone}<br>
                                </c:if>
                                </c:forEach>
                        ">
                        海南
                    </button>
                </li>
                </ul>
            </div>
            <div class="search-bar">
                 <form class="navbar-form navbar-left" action="dealer/search" role="search">
                   <select class="form-control" name="province">
                        <option>请选择一个省份</option>
                        <option>北京</option>
                        <option>上海</option>
                        <option>天津</option>
                        <option>重庆</option>
                        <option>河北</option>
                        <option>山西</option>
                        <option>内蒙古</option>
                        <option>辽宁</option>
                        <option>吉林</option>
                        <option>黑龙江</option>
                        <option>江苏</option>
                        <option>浙江</option>
                        <option>安徽</option>
                        <option>福建</option>
                        <option>山西</option>
                        <option>山东</option>
                        <option>河南</option>
                        <option>湖北</option>
                        <option>湖南</option>
                        <option>广东</option>
                        <option>广西</option>
                        <option>海南</option>
                        <option>四川</option>
                        <option>贵州</option>
                        <option>云南</option>
                        <option>西藏</option>
                        <option>陕西</option>
                        <option>甘肃</option>
                        <option>青海</option>
                        <option>宁夏回族自治区</option>
                        <option>香港</option>
                        <option>澳门</option>
                        <option>台湾</option>
                   </select>
                   &nbsp;&nbsp;&nbsp;&nbsp;
                   <button type="submit" class="btn btn-default">&nbsp;查询&nbsp</button>
                 </form>
            </div>
            <div id="dealer-table">
                <table class="table table-bordered">
                   <thead >
                      <tr>
                         <th class="text-center">分销商名称</th>
                         <th class="text-center">类型</th>
                         <th class="text-center">销售人员</th>
                         <th class="text-center">销售热线</th>
                         <th class="text-center">地址</th>
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
                          </tr>
                      </c:forEach>
                   </tbody>
                </table>
            </div>
        </div>
    </div>
</div>




<%@ include file="../footer.jsp" %>