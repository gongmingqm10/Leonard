<%@ include file="../backend/admin.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

 <link rel="stylesheet" href="style/backend/editProductView.css" type="text/css"/>
 <script type="text/javascript" src="scripts/backend/editProductView.js"></script>

<c:set var="url" value="${productRE.productView}" />

<div class="panel panel-default">
    <div class="panel-heading">
    <p class="panel-title">产品视觉体验管理</p>
    </div>
    <div class="panel-body">
         <form class="form-horizontal" role="form" id="product-form" action="product/updateView" onSubmit="mySubmit(${productRE.id})" method="POST" enctype="multipart/form-data">
              <div class="form-group col-sm-10">
                  <label for="productName" class="col-sm-2 control-label picture-label">产品名称：</label>
                  <input type="text" id="productName" name="productName" class="form-control col-sm-2 imageUrl" value="${productRE.productName}" disabled/>
              </div>
              <div class="form-group col-sm-10">
                  <label for="image1" class="col-sm-2 control-label picture-label">照片1：</label>
                  <input type="file" id="image1" name="image1" class="form-control col-sm-2 image" onchange="readURL(this)"/>
                  <input type="text" id="image1Url" name="image1Url" class="form-control col-sm-2 imageUrl" placeholder="上传自动生成图片保存地址" value="${fn:split(url, ',')[0]}"/>
                  <button type="button" class="btn btn-default col-sm-1" onClick="uploads(1)">上传</button>
                  <button type="button" class="btn btn-default col-sm-1" onClick="clearText(1)">撤销</button>
              </div>
              <div class="form-group col-sm-10">
                  <label for="image2" class="col-sm-2 control-label picture-label">照片2：</label>
                  <input type="file" id="image2" name="image1" class="form-control col-sm-2 image" onchange="readURL(this);" />
                  <input type="text" id="image2Url" name="image2Url" class="form-control col-sm-2 imageUrl" placeholder="上传自动生成图片保存地址" value="${fn:split(url, ',')[1]}"/>
                  <button type="button" class="btn btn-default col-sm-1" onClick="uploads(2)">上传</button>
                  <button type="button" class="btn btn-default col-sm-1" onClick="clearText(2)">撤销</button>
              </div>
              <div class="form-group col-sm-10">
                  <label for="image3" class="col-sm-2 control-label picture-label">照片3：</label>
                  <input type="file" id="image3" name="image3" class="form-control col-sm-2 image" onchange="readURL(this);" />
                  <input type="text" id="image3Url" name="image3Url" class="form-control col-sm-2 imageUrl" placeholder="上传自动生成图片保存地址" value="${fn:split(url, ',')[2]}"/>
                  <button type="button" class="btn btn-default col-sm-1" onClick="uploads(3)">上传</button>
                  <button type="button" class="btn btn-default col-sm-1" onClick="clearText(3)">撤销</button>
              </div>
              <div class="form-group col-sm-10">
                  <label for="image4" class="col-sm-2 control-label picture-label">照片4：</label>
                  <input type="file" id="image4" name="image4" class="form-control col-sm-2 image" onchange="readURL(this);"/>
                  <input type="text" id="image4Url" name="image4Url" class="form-control col-sm-2 imageUrl" placeholder="上传自动生成图片保存地址" value="${fn:split(url, ',')[3]}"/>
                  <button type="button" class="btn btn-default col-sm-1" onClick="uploads(4)">上传</button>
                  <button type="button" class="btn btn-default col-sm-1" onClick="clearText(4)">撤销</button>
              </div>
              <div class="form-group col-sm-10">
                  <label for="image5" class="col-sm-2 control-label picture-label">照片5：</label>
                  <input type="file" id="image5" name="image1" class="form-control col-sm-2 image" onchange="readURL(this);"/>
                  <input type="text" id="image5Url" name="image5Url" class="form-control col-sm-2 imageUrl" placeholder="上传自动生成图片保存地址" value="${fn:split(url, ',')[4]}"/>
                  <button type="button" class="btn btn-default col-sm-1" onClick="uploads(5)">上传</button>
                  <button type="button" class="btn btn-default col-sm-1" onClick="clearText(5)">撤销</button>
              </div>
              <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-12">
                        <button type="submit" class="btn btn-primary">保存</button>
                        <a href="admin/productView"><button type="button" class="btn btn-primary " >返回</button></a>
                    </div>
              </div>
        </form>
    </div>
</div>

        </div>
    </div>
<%@ include file="../footer.jsp" %>