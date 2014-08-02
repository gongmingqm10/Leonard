<%@ include file="../backend/admin.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

 <link rel="stylesheet" href="style/backend/createProduct.css" type="text/css"/>
 <script type="text/javascript" src="scripts/backend/createProduct.js"></script>

<div>
    <c:set var="url" value="${product.images}" />
    <c:set var="colorName" value="${product.colorName}" />

    <form class="form-horizontal" role="form" id="product-form" action="product/add" onSubmit="mySubmit(${product.id})" method="POST" enctype="multipart/form-data">
      <div class="form-info col-sm-4">
          <div class="form-group">
            <label for="number" class="col-sm-3 control-label">状态：</label>
            <div class="col-sm-9">
              <input type="text" class="form-control left-input" id="number" name="number" placeholder="热门度" value="${product.number}">
            </div>
          </div>
          <div class="form-group">
            <label for="productName" class="col-sm-3 control-label">产品名：</label>
            <div class="col-sm-9">
              <input type="text" class="form-control left-input" id="productName" name="productName" placeholder="产品名称" value="${product.productName}">
            </div>
          </div>
          <div class="form-group">
            <label for="type" class="col-sm-3 control-label">类别：</label>
            <div class="col-sm-9">
            <select id="type" name="type" class="form-control left-input">
              <option <c:if test = "${product.type == '把式全地车型'}">selected="selected"</c:if> >把式全地车型</option>
              <option <c:if test = "${product.type == '方向盘式全地车型'}">selected="selected"</c:if> >方向盘式全地车型</option>
              <option <c:if test = "${product.type == '雪地车'}">selected="selected"</c:if> >雪地车</option>
              <option <c:if test = "${product.type == '配件饰品'}">selected="selected"</c:if> >配件饰品</option>
            </select>
            </div>
          </div>
          <div class="form-group">
            <label for="subType" class="col-sm-3 control-label">子类别：</label>
            <div class="col-sm-9">
              <input type="text" class="form-control left-input" id="subType" name="subType" placeholder="子类别名称" value="${product.subType}">
            </div>
          </div>
          <div class="form-group">
              <label for="productInfo" class="col-sm-3 control-label">产品信息：</label>
              <div class="col-sm-9">
                <input type="text" class="form-control left-input" id="productInfo" name="productInfo" placeholder="产品信息" value="${product.productInfo}">
              </div>
          </div>
      </div>

      <div class="form-image col-sm-12">
          <div class="form-group">
              <label for="color1" class="col-sm-1 control-label">颜色：</label>
              <div class="col-sm-1">
                   <select id="color1" name ="color1" class="form-control">
                     <option value="#FF0000" <c:if test="${fn:split(colorName, ',')[0] == '红色'}">selected="selected"</c:if> >红色</option>
                     <option value="#FFA500" <c:if test="${fn:split(colorName, ',')[0] == '橙色'}">selected="selected"</c:if> >橙色</option>
                     <option value="#FFD700" <c:if test="${fn:split(colorName, ',')[0] == '金色'}">selected="selected"</c:if> >金色</option>
                     <option value="#FFFF00" <c:if test="${fn:split(colorName, ',')[0] == '黄色'}">selected="selected"</c:if> >黄色</option>
                     <option value="#00FF00" <c:if test="${fn:split(colorName, ',')[0] == '绿色'}">selected="selected"</c:if> >绿色</option>
                     <option value="#0000FF" <c:if test="${fn:split(colorName, ',')[0] == '蓝色'}">selected="selected"</c:if> >蓝色</option>
                     <option value="#E0FFFF" <c:if test="${fn:split(colorName, ',')[0] == '浅蓝色'}">selected="selected"</c:if> >浅蓝色</option>
                     <option value="#8B00FF" <c:if test="${fn:split(colorName, ',')[0] == '紫色'}">selected="selected"</c:if> >紫色</option>
                     <option value="#FF00FF" <c:if test="${fn:split(colorName, ',')[0] == '品红色'}">selected="selected"</c:if> >品红色</option>
                     <option value="#FFC0CB" <c:if test="${fn:split(colorName, ',')[0] == '粉红色'}">selected="selected"</c:if> >粉红色</option>
                     <option value="#FFFFFF" <c:if test="${fn:split(colorName, ',')[0] == '白色'}">selected="selected"</c:if> >白色</option>
                     <option value="#000000" <c:if test="${fn:split(colorName, ',')[0] == '黑色'}">selected="selected"</c:if> >黑色</option>
                     <option value="#C0C0C0" <c:if test="${fn:split(colorName, ',')[0] == '银色'}">selected="selected"</c:if> >银色</option>
                     <option value="#808080" <c:if test="${fn:split(colorName, ',')[0] == '灰色'}">selected="selected"</c:if> >灰色</option>
                   </select>
              </div>
              <label for="image1" class="col-sm-1 control-label picture-label">照片1：</label>
              <input type="file" id="image1" name="image1" class="form-control col-sm-2 image" onchange="readURL(this)"/>
              <input type="text" id="image1Url" name="image1Url" class="form-control col-sm-2 imageUrl" placeholder="上传自动生产地址" value="${fn:split(url, ',')[0]}"/>
              <button type="button" class="btn btn-default col-sm-1" onClick="uploads(1)">上传</button>
              <button type="button" class="btn btn-default col-sm-1" onClick="clearText(1)">撤销</button>
          </div>
          <div class="form-group">
              <label for="color2" class="col-sm-1 control-label">颜色：</label>
              <div class="col-sm-1">
                   <select id="color2" name="color2" class="form-control">
                     <option value="#FF0000" <c:if test="${fn:split(colorName, ',')[1] == '红色'}">selected="selected"</c:if> >红色</option>
                     <option value="#FFA500" <c:if test="${fn:split(colorName, ',')[1] == '橙色'}">selected="selected"</c:if> >橙色</option>
                     <option value="#FFD700" <c:if test="${fn:split(colorName, ',')[1] == '金色'}">selected="selected"</c:if> >金色</option>
                     <option value="#FFFF00" <c:if test="${fn:split(colorName, ',')[1] == '黄色'}">selected="selected"</c:if> >黄色</option>
                     <option value="#00FF00" <c:if test="${fn:split(colorName, ',')[1] == '绿色'}">selected="selected"</c:if> >绿色</option>
                     <option value="#0000FF" <c:if test="${fn:split(colorName, ',')[1] == '蓝色'}">selected="selected"</c:if> >蓝色</option>
                     <option value="#E0FFFF" <c:if test="${fn:split(colorName, ',')[1] == '浅蓝色'}">selected="selected"</c:if> >浅蓝色</option>
                     <option value="#8B00FF" <c:if test="${fn:split(colorName, ',')[1] == '紫色'}">selected="selected"</c:if> >紫色</option>
                     <option value="#FF00FF" <c:if test="${fn:split(colorName, ',')[1] == '品红色'}">selected="selected"</c:if> >品红色</option>
                     <option value="#FFC0CB" <c:if test="${fn:split(colorName, ',')[1] == '粉红色'}">selected="selected"</c:if> >粉红色</option>
                     <option value="#FFFFFF" <c:if test="${fn:split(colorName, ',')[1] == '白色'}">selected="selected"</c:if> >白色</option>
                     <option value="#000000" <c:if test="${fn:split(colorName, ',')[1] == '黑色'}">selected="selected"</c:if> >黑色</option>
                     <option value="#C0C0C0" <c:if test="${fn:split(colorName, ',')[1] == '银色'}">selected="selected"</c:if> >银色</option>
                     <option value="#808080" <c:if test="${fn:split(colorName, ',')[1] == '灰色'}">selected="selected"</c:if> >灰色</option>
                   </select>
              </div>
              <label for="image2" class="col-sm-1 control-label picture-label">照片2：</label>
              <input type="file" id="image2" name="image1" class="form-control col-sm-10 image" onchange="readURL(this);" />
              <input type="text" id="image2Url" name="image2Url" class="form-control col-sm-2 imageUrl" placeholder="上传自动生产地址" value="${fn:split(url, ',')[1]}"/>
              <button type="button" class="btn btn-default col-sm-1" onClick="uploads(2)">上传</button>
              <button type="button" class="btn btn-default col-sm-1" onClick="clearText(2)">撤销</button>
          </div>
          <div class="form-group">
              <label for="color3" class="col-sm-1 control-label">颜色：</label>
              <div class="col-sm-1">
                   <select id="color3" name="color3" class="form-control">
                     <option value="#FF0000" <c:if test="${fn:split(colorName, ',')[2] == '红色'}">selected="selected"</c:if> >红色</option>
                     <option value="#FFA500" <c:if test="${fn:split(colorName, ',')[2] == '橙色'}">selected="selected"</c:if> >橙色</option>
                     <option value="#FFD700" <c:if test="${fn:split(colorName, ',')[2] == '金色'}">selected="selected"</c:if> >金色</option>
                     <option value="#FFFF00" <c:if test="${fn:split(colorName, ',')[2] == '黄色'}">selected="selected"</c:if> >黄色</option>
                     <option value="#00FF00" <c:if test="${fn:split(colorName, ',')[2] == '绿色'}">selected="selected"</c:if> >绿色</option>
                     <option value="#0000FF" <c:if test="${fn:split(colorName, ',')[2] == '蓝色'}">selected="selected"</c:if> >蓝色</option>
                     <option value="#E0FFFF" <c:if test="${fn:split(colorName, ',')[2] == '浅蓝色'}">selected="selected"</c:if> >浅蓝色</option>
                     <option value="#8B00FF" <c:if test="${fn:split(colorName, ',')[2] == '紫色'}">selected="selected"</c:if> >紫色</option>
                     <option value="#FF00FF" <c:if test="${fn:split(colorName, ',')[2] == '品红色'}">selected="selected"</c:if> >品红色</option>
                     <option value="#FFC0CB" <c:if test="${fn:split(colorName, ',')[2] == '粉红色'}">selected="selected"</c:if> >粉红色</option>
                     <option value="#FFFFFF" <c:if test="${fn:split(colorName, ',')[2] == '白色'}">selected="selected"</c:if> >白色</option>
                     <option value="#000000" <c:if test="${fn:split(colorName, ',')[2] == '黑色'}">selected="selected"</c:if> >黑色</option>
                     <option value="#C0C0C0" <c:if test="${fn:split(colorName, ',')[2] == '银色'}">selected="selected"</c:if> >银色</option>
                     <option value="#808080" <c:if test="${fn:split(colorName, ',')[2] == '灰色'}">selected="selected"</c:if> >灰色</option>
                   </select>
              </div>
              <label for="image3" class="col-sm-1 control-label picture-label">照片3：</label>
              <input type="file" id="image3" name="image3" class="form-control col-sm-10 image" onchange="readURL(this);" />
              <input type="text" id="image3Url" name="image3Url" class="form-control col-sm-2 imageUrl" placeholder="上传自动生产地址" value="${fn:split(url, ',')[2]}"/>
              <button type="button" class="btn btn-default col-sm-1" onClick="uploads(3)">上传</button>
              <button type="button" class="btn btn-default col-sm-1" onClick="clearText(3)">撤销</button>
          </div>
          <div class="form-group">
              <label for="color4" class="col-sm-1 control-label">颜色：</label>
              <div class="col-sm-1">
                   <select id="color4" name="color4" class="form-control">
                     <option value="#FF0000" <c:if test="${fn:split(colorName, ',')[3] == '红色'}">selected="selected"</c:if> >红色</option>
                     <option value="#FFA500" <c:if test="${fn:split(colorName, ',')[3] == '橙色'}">selected="selected"</c:if> >橙色</option>
                     <option value="#FFD700" <c:if test="${fn:split(colorName, ',')[3] == '金色'}">selected="selected"</c:if> >金色</option>
                     <option value="#FFFF00" <c:if test="${fn:split(colorName, ',')[3] == '黄色'}">selected="selected"</c:if> >黄色</option>
                     <option value="#00FF00" <c:if test="${fn:split(colorName, ',')[3] == '绿色'}">selected="selected"</c:if> >绿色</option>
                     <option value="#0000FF" <c:if test="${fn:split(colorName, ',')[3] == '蓝色'}">selected="selected"</c:if> >蓝色</option>
                     <option value="#E0FFFF" <c:if test="${fn:split(colorName, ',')[3] == '浅蓝色'}">selected="selected"</c:if> >浅蓝色</option>
                     <option value="#8B00FF" <c:if test="${fn:split(colorName, ',')[3] == '紫色'}">selected="selected"</c:if> >紫色</option>
                     <option value="#FF00FF" <c:if test="${fn:split(colorName, ',')[3] == '品红色'}">selected="selected"</c:if> >品红色</option>
                     <option value="#FFC0CB" <c:if test="${fn:split(colorName, ',')[3] == '粉红色'}">selected="selected"</c:if> >粉红色</option>
                     <option value="#FFFFFF" <c:if test="${fn:split(colorName, ',')[3] == '白色'}">selected="selected"</c:if> >白色</option>
                     <option value="#000000" <c:if test="${fn:split(colorName, ',')[3] == '黑色'}">selected="selected"</c:if> >黑色</option>
                     <option value="#C0C0C0" <c:if test="${fn:split(colorName, ',')[3] == '银色'}">selected="selected"</c:if> >银色</option>
                     <option value="#808080" <c:if test="${fn:split(colorName, ',')[3] == '灰色'}">selected="selected"</c:if> >灰色</option>
                   </select>
              </div>
              <label for="image4" class="col-sm-1 control-label picture-label">照片4：</label>
              <input type="file" id="image4" name="image4" class="form-control col-sm-10 image" onchange="readURL(this);"/>
              <input type="text" id="image4Url" name="image4Url" class="form-control col-sm-2 imageUrl" placeholder="上传自动生产地址" value="${fn:split(url, ',')[3]}"/>
              <button type="button" class="btn btn-default col-sm-1" onClick="uploads(4)">上传</button>
              <button type="button" class="btn btn-default col-sm-1" onClick="clearText(4)">撤销</button>
          </div>
          <div class="form-group">
              <label for="color5" class="col-sm-1 control-label">颜色：</label>
              <div class="col-sm-1">
                   <select id="color5" name="color5" class="form-control">
                     <option value="#FF0000" <c:if test="${fn:split(colorName, ',')[4] == '红色'}">selected="selected"</c:if> >红色</option>
                     <option value="#FFA500" <c:if test="${fn:split(colorName, ',')[4] == '橙色'}">selected="selected"</c:if> >橙色</option>
                     <option value="#FFD700" <c:if test="${fn:split(colorName, ',')[4] == '金色'}">selected="selected"</c:if> >金色</option>
                     <option value="#FFFF00" <c:if test="${fn:split(colorName, ',')[4] == '黄色'}">selected="selected"</c:if> >黄色</option>
                     <option value="#00FF00" <c:if test="${fn:split(colorName, ',')[4] == '绿色'}">selected="selected"</c:if> >绿色</option>
                     <option value="#0000FF" <c:if test="${fn:split(colorName, ',')[4] == '蓝色'}">selected="selected"</c:if> >蓝色</option>
                     <option value="#E0FFFF" <c:if test="${fn:split(colorName, ',')[4] == '浅蓝色'}">selected="selected"</c:if> >浅蓝色</option>
                     <option value="#8B00FF" <c:if test="${fn:split(colorName, ',')[4] == '紫色'}">selected="selected"</c:if> >紫色</option>
                     <option value="#FF00FF" <c:if test="${fn:split(colorName, ',')[4] == '品红色'}">selected="selected"</c:if> >品红色</option>
                     <option value="#FFC0CB" <c:if test="${fn:split(colorName, ',')[4] == '粉红色'}">selected="selected"</c:if> >粉红色</option>
                     <option value="#FFFFFF" <c:if test="${fn:split(colorName, ',')[4] == '白色'}">selected="selected"</c:if> >白色</option>
                     <option value="#000000" <c:if test="${fn:split(colorName, ',')[4] == '黑色'}">selected="selected"</c:if> >黑色</option>
                     <option value="#C0C0C0" <c:if test="${fn:split(colorName, ',')[4] == '银色'}">selected="selected"</c:if> >银色</option>
                     <option value="#808080" <c:if test="${fn:split(colorName, ',')[4] == '灰色'}">selected="selected"</c:if> >灰色</option>
                   </select>
              </div>
              <label for="image5" class="col-sm-1 control-label picture-label">照片5：</label>
              <input type="file" id="image5" name="image1" class="form-control col-sm-10 image" onchange="readURL(this);"/>
              <input type="text" id="image5Url" name="image5Url" class="form-control col-sm-2 imageUrl" placeholder="上传自动生产地址" value="${fn:split(url, ',')[4]}"/>
              <button type="button" class="btn btn-default col-sm-1" onClick="uploads(5)">上传</button>
              <button type="button" class="btn btn-default col-sm-1" onClick="clearText(5)">撤销</button>
          </div>


      </div>
      <div class="form-group">
          <div class="col-sm-offset-1 col-sm-12">
            <button type="submit" class="btn btn-primary">保存</button>
          </div>
      </div>


    </form>

</div>



        </div>
    </div>
<%@ include file="../footer.jsp" %>