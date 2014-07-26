<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>${pageTitle}</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css" type="text/css"/>
    <link rel="stylesheet" href="style/app.css" type="text/css"/>

    <script type="text/javascript" src="scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="scripts/app.js"></script>

</head>
<body>
<div class="container">
<div class="header-container">
    <div class="head-btn">
        <img src="http://intl.arcticcat.com/img/language/intl.png" alt="">&nbsp;
        <a href="javascript:void(0);">English</a>
        <span>|</span>
        <a href="http://intl.arcticcat.com/customer_care"><span>Customer Care</span></a>
        <span>|</span>
        <a href="login/"><span>Login</span></a>
    </div>
    <nav class="navbar navbar-inverse header-nav" role="navigation">
        <div class="navbar-header">
          <a class="navbar-brand" href="home">ARCTIC CAT</a>
        </div>
        <div>
          <ul class="nav navbar-nav" >
             <li class="active">
                <a href="javascript:void(0);" onclick="showPanel(this);" target-content="#nav-content1">
                    SLEDS&nbsp;&nbsp;&nbsp;
                    <i class="glyphicon glyphicon-chevron-down"></i>
                </a>
             </li>
             <li>
                <a href="javascript:void(0);" onclick="showPanel(this);"  target-content="#nav-content2">
                    ATVS&nbsp;&nbsp;&nbsp;
                    <i class="glyphicon glyphicon-chevron-down"></i>
                </a>
             </li>
             <li>
                <a  href="javascript:void(0);" onclick="showPanel(this);"  target-content="#nav-content3">
                    SIDE BY SIDES&nbsp;&nbsp;&nbsp;
                    <i class="glyphicon glyphicon-chevron-down"></i>
                </a>

             </li>
             <li>
                <a href="javascript:void(0);" onclick="showPanel(this);"   target-content="#nav-content4">
                    GEVR&nbsp;&nbsp;&nbsp;
                    <i class="glyphicon glyphicon-chevron-down"></i>
                </a>
             </li>
          </ul>
        </div>
        <div class="navbar-right" style="margin:12px;">
           <a href="javascript:void(0);"><span style="font-size: 12px;color:grey;">BECOME A DEALER</span></a>
           <span style="font-size: 12px;">&nbsp;&nbsp;&nbsp;&nbsp;</span>
           <a href="dealer/"><span style="font-size: 12px;color:grey;">FIND A DEALER</span></a>
        </div>
    </nav>
    <div class="container nav-container">
        <div class="nav-content" id="nav-content1">
            <div class="row text-center nav-row">
                <div class="col-md-4 row-border">
                    <img src="images/header/dd1.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd2.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd3.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd4.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd5.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd6.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <span>Full Lineup</span>
                </div>
                <div class="col-md-8 row-border">
                    <span>Past Models: 2011 2012 2013 2014</span>
                </div>
            </div>
        </div>
        <div class="nav-content" id="nav-content2">
            <div class="row text-center nav-row">
                <div class="col-md-4 row-border">
                    <img src="images/header/dd1.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd2.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd3.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd4.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd5.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd6.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <span>Full Lineup</span>
                </div>
                <div class="col-md-8 row-border">
                    <span>Past Models: 2011 2012 2013 2014</span>
                </div>
            </div>
        </div>
        <div class="nav-content" id="nav-content3">
            <div class="row text-center nav-row">
                <div class="col-md-4 row-border">
                    <img src="images/header/dd1.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd2.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd3.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd4.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd5.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd6.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <span>Full Lineup</span>
                </div>
                <div class="col-md-8 row-border">
                    <span>Past Models: 2011 2012 2013 2014</span>
                </div>
            </div>
        </div>
        <div class="nav-content" id="nav-content4">
            <div class="row text-center nav-row">
                <div class="col-md-4 row-border">
                    <img src="images/header/dd1.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd2.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd3.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd4.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd5.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <img src="images/header/dd6.png" alt="">
                    <h4>RE CREATION</h4>
                    <h5>BIG BORE</h5>
                    <P>
                        4x4, Big Fun, Work
                        <BR>
                        Ages 16+
                    </P>
                </div>
                <div class="col-md-4 row-border">
                    <span>Full Lineup</span>
                </div>
                <div class="col-md-8 row-border">
                    <span>Past Models: 2011 2012 2013 2014</span>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
