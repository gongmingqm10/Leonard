<%@ include file="admin.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
   prefix="fn" %>

<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
<link href="style/prettify.css" rel="stylesheet">
<link href="style/backend/createNews.css" rel="stylesheet">


<script src="scripts/jquery.hotkeys.js"></script>
<script src="scripts/prettify.js"></script>
<script src="bootstrap/js/bootstrap-wysiwyg.js"></script>
<script src="scripts/backend/editProductNews.js"></script>

<div class="panel panel-default">
    <div class="panel-heading">
    <p class="panel-title">产品新闻管理</p>
    </div>
    <div class="panel-body">
        <div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
          <div class="btn-group">
            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="icon-font"></i><b class="caret"></b></a>
            <ul class="dropdown-menu">
            </ul>
          </div>
          <div class="btn-group">
            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
              <ul class="dropdown-menu">
              <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
              <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
              <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
              </ul>
          </div>
          <div class="btn-group">
            <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
            <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
            <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>
            <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
          </div>
          <div class="btn-group">
            <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>
            <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>
            <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
            <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>
          </div>
          <div class="btn-group">
            <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
            <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
            <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
            <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
          </div>
          <div class="btn-group">
              <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="icon-link"></i></a>
                <div class="dropdown-menu input-append">
                    <input class="span2" placeholder="URL" type="text" data-edit="createLink"/>
                    <button class="btn" type="button">Add</button>
                </div>
              <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="icon-cut"></i></a>
          </div>

          <div class="btn-group">
            <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="icon-picture"></i></a>
            <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
          </div>
          <div class="btn-group">
            <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
            <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
          </div>
          <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="">
        </div>

        <div id="editor">
          <c:set var="url" value="${product.images}" />
          ${product.productNews}
          <c:if test= "${empty product.productNews}" >
            <div id="product-img-box" style="text-align: center;"><img id="product-img" src="${fn:split(url, ',')[0]}" style="color: inherit;"></div>
          </c:if>
        </div>

        <button class="btn btn-primary " onClick="saveProduct(${product.id})">保存</button>
        <a href="admin/productNews"><button class="btn btn-primary " >返回</button></a>

        <div >
            <textarea id="html-editor" name="Text1" cols="40" rows="10" ></textarea>
            <button class="btn btn-primary " onClick="saveHtml()">确定</button>
        </div>
    </div>
</div>



      </div>
    </div>
 <%@ include file="../footer.jsp" %>