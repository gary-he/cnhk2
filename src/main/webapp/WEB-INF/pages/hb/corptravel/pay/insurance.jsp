<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}/staticfile"/>
<head>
<meta charset="utf-8">
<!-- IE 浏览器运行最新的渲染模式-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 启用响应式特性 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 双核使用webkit内核 -->
<meta name="renderer" content="webkit">
<title>菜鸟航空</title>
<link href="${ctx}/hb/css/bootstrap.min.css" rel="stylesheet">
<link href="${ctx}/hb/css/common.css" rel="stylesheet">
<link href="${ctx}/hb/css/corptravel.css" rel="stylesheet">
<link href="${ctx}/hb/css/enterprise.css" rel="stylesheet">
<!--<link href="../../../js/icheck/skins/all.css" rel="stylesheet" type="text/css">-->
<!-- IconFont图标 -->
<link href="${ctx}/hb/css/iconfont.css" rel="stylesheet">
<script type="text/javascript" src="${ctx}/hb/js/jquery-1.9.1.min.js"></script>
<script src="${ctx}/hb/js/bootstrap.min.js"></script>
<!-- 兼容IE8 -->
<!--[if lte IE 9]>
<script type="text/javascript" src="../../../js/html5shiv.min.js"></script>
<script type="text/javascript" src="../../../js/respond.min.js"></script>
<![endif]-->
<!-- layer弹框 2.1 -->
<script type="text/javascript" src="${ctx}/hb/js/layer/layer.js"></script>
<!-- 日历控件 -->
<script language="javascript" type="text/javascript" src="${ctx}/hb/js/My97DatePicker/WdatePicker.js"></script>
</head>
<body >
<!-- header -->
<nav class="navbar navbar-default navbar-fixed-top bg-white" >
<!-- 小导航 -->
<nav class="navbar navbar-default" style=" min-height:30px; line-height:30px; margin-bottom:0px; border-radius:0;">
  <div class="container font12">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <ul class="nav navbar-nav nav-top-small" style="margin-left:-15px;" >
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">您好，${remUserName } <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="../系统管理/修改密码.html">修改密码</a></li>
            <li><a href="#">退出</a></li>
          </ul>
        </li>       
      </ul>
<ul class="nav navbar-nav navbar-right nav-top-small">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="icon iconfont font14 " style=" vertical-align:middle;"  >&#xe62b;</i> 400-111-8989 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">（或）400-111-8989</a></li>
            <li><a href="#">（或）400-111-8989</a></li>
            <!--<li role="separator" class="divider"></li>-->
          </ul>
        </li>
        
      </ul>
    <ul class="nav navbar-nav navbar-right nav-top-small">
        <li><a href="../帮助中心/help.html">帮助中心</a></li>
        
      </ul>
  </div>
</nav>
<!-- 小导航结束 -->

  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class=" " href="差旅报告/汇总.html" ><img src="${ctx}/hb/img/logo.png" width="210" height="70" alt="系统LOGO" class="pull-left mar-right-30" style="margin-left:-15px;" ></a>
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li  ><a href="../search.html"><i class="icon iconfont icon-nav-block font24" >&#xe620;</i> 在线预订</a></li>
         <li class="active"><a href="../order/orderList.html"><i class="icon iconfont icon-nav-block font24" >&#xe61c;</i> 订单管理</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
    
  </div>
</nav>
<!-- header end -->

<!-- 管理模板 -->
<div class="container bg-gray-eee box-shadow mar-bottom-30" style="padding-right:0px; padding-left:0px; position:relative; margin-top:120px;">
<div class="col-sm-7 container bg-white  pad-bottom-20">


<form class="form-signin" action="/pay/payment" method="POST" >


<!-- 航班信息 -->
<div style="overflow:hidden;">
  <h3 class="mar-bottom-20" style=" display:block; float:left;">乘机人</h3>
  <a href="" style=" display:block;float:left; margin-left:310px; line-height:70px; ">历史乘机人</a>
</div>
  <div>
     <input name="pName" type="text" class="form-control input-sm w150" style=" display: inline-block;" placeholder="姓名，与登机所持证件中的姓名一致">
     <select name="pType" class="form-control input-sm w150" style=" display: inline-block;">
            <option value="成人" selected="selected">成人</option>
            <option value="儿童">儿童（0-12岁）</option>
     </select>
     <select name="pSex" class="form-control input-sm w150" style=" display: inline-block;">
            <option value="男" selected="selected">男</option>
            <option value="女">女</option>
     </select>
  </div>
  <div class="mar-top-10">
     <select name="select" class="form-control input-sm w150" style=" display: inline-block;">
            <option value="身份证" selected="selected">身份证</option>
     </select>
     <input name="pIdentily" type="text" class="form-control input-sm w300" style=" display: inline-block;" placeholder="证件号码">
  </div>
  
  <div class=" mar-top-10">
  <input type="button" value="添加乘机人" class="btn btn-danger zw2" >
  <input type="hidden" name="airlineType" value=${flight.id }>
</div>
  
<!-- 航班信息 结束 -->

<!-- 保险 -->
<div style="position:relative;">
  <h3 class="mar-bottom-20">保险</h3>
  <a href="" class="mar-right-10 safe">航意险</a>
  <select name="passenger.insuranceId" class="form-control input-sm w150 mar-right-10" style=" display: inline-block;">
            <option value="保险" selected="selected">￥30/份X1</option>
            
         
  </select> 
  <span>保额￥260万/份</span> 
  
<!--航意险说明-->
  <div style="width:460px; border:1px solid #C4C4C4; padding:5px; position:absolute; left:0px; top:75px; background-color:#eee;" class="explain">
  <h5>航意险说明</h5>
  <p>1.保险费：<i class="rmb">¥</i>30/份。保险金额及保险责任：<i class="rmb">¥</i>260万/份。航空意外险由太平财产保险有限公司深圳分公司承保。</p>
  <p>2.保险购买即生效，不可单独退保。机票退款后，自动退保。机票改签后，保险责任保护到改签后航班。提供保险定额发票作为报销凭证。</p>
  </div>
</div>
  
  <!-- 联系人 -->
  <h3 class="mar-bottom-20">联系电话</h3>
<!--   <input name="input" type="text" class="form-control input-sm" style=" display: inline-block; width:460px;" placeholder="姓名" value="XXX">--> 
  
 <div class="mar-top-10">
  <select name="select" class="form-control input-sm w110 mar-right-10" style=" display: inline-block;">
       <option value="国家" selected="selected">中国&nbsp;&nbsp;+86</option>    
  </select>
  <input name="pPhone" type="text" class="form-control input-sm" style=" display: inline-block; width:337px;" placeholder="手机号码，接收航班信息">
  </div> 


<!-- 报销 -->
  <h3 class="mar-bottom-20">报销</h3>
  <input type="checkbox" name="choice" value="1">&nbsp;需要报销凭证<span style=" color:#999;">（含：行程单和差额发票，快递费发票）</span>
</div>
<div class="col-sm-5 bg-gray-eee">
<div style=" margin-left:-15px;">
<h4 style="overflow:hidden; margin-left:10px;">
  <span style="display:block; float:left;"><fmt:formatDate value="${flight.fStarttime}" pattern="MM-dd"/>&nbsp;&nbsp;
  			<fmt:formatDate value="${flight.fStarttime}" pattern="EE"/></span>
  			
  <span style="display:block; float:left; margin-left:80px;">${flight.fLocationName}
  												-${flight.fDepartureName}</span>
  <span style=" display:block; float:right;color:#999; font-size:14px; margin-right:5px;">${flight.fRank}</span>
</h4>
</div>
<div style=" overflow:hidden; margin-bottom:20px;">
        <div class="flight-from" style="float:left;">
            <span class="time text-center"><fmt:formatDate value="${flight.fStarttime}" pattern="HH:mm"/></span><br/>
            <span class="text-center">${flight.fLoAirport }</span>
        </div>
        <div class="flight-info" style="float:left; margin-left:100px;">
            <img src="${ctx}/hb/img/a.png">
            <span class="font12 gray-999"><fmt:formatDate value="${pTakeTime }" pattern="HH:mm"/></span>
            <img src="${ctx}/hb/img/b.png"><br/>
            <span class="text-center font12 gray-999 mar-left-10">${flight.fCompanyName}有限公司 ${flight.fCompany}</span><br/>
            <img src="${ctx}/hb/img/c.png" class="mar-left-10">
            <span class="text-center font12 gray-999">实际乘坐 ${flight.fId }</span><br/>
            <span class="airline-direct"></span>
            <span class="arrow"></span>
        </div>
        <div class="flight-to" style="float:right;">
            <span class="time text-center"> <fmt:formatDate value="${flight.fOvertime}" pattern="HH:mm"/></span><br/>
            <span class="text-center">${flight.fDeAirport}</span>
        </div>
      </div>
<div>
<div class="tuigaiqian" style="cursor:pointer; color:#337ab7;">退改签说明</div>
<div class="instruction">
<table class="table table-bordered" style="height:150px;">
  <tr>
    <td>成人票</td>
    <td>退票扣费</td>
    <td>改期加收手续费</td>
    <td>签转</td>
  </tr>
  <tr>
    <td>起飞前24小时之前</td>
    <td>￥${flight.fTotal*0.1}/人</td>
    <td>￥${flight.fTotal*0.2}/人</td>
    <td>可以签转</td>
  </tr>
  <tr>
    <td>起飞前24小时之后</td>
    <td>￥${flight.fTotal*0.2}/人</td>
    <td>￥${flight.fTotal*0.3}/人</td>
    <td>可以签转</td>
  </tr>
</table>
</div>
</div>

<div style=" margin-left:-15px; overflow:hidden;">
<h4 class="mar-left-10" style="display:block; float:left;">成人票总额</h4>
<h4 class="red" style=" display:block; float:right; font-weight:bold;">￥${flight.fTotal+30}</h4>
</div>
<table class="table">
  <tr>
    <td>成人票</td>
    <td>￥${flight.fPrice}/人</td>
    <td>x1</td>
  </tr>
  <tr>
    <td>机建费</td>
    <td>￥${flight.fTax}/成人</td>
    <td>x1</td>
  </tr>
  <tr>
    <td>航意险</td>
    <td>￥30/人</td>
    <td>x1</td>
  </tr>
</table>

<div style=" margin-left:-15px; overflow:hidden;">
<h4 class="mar-left-10" style="display:block; float:left;">儿童票总额</h4>
<h4 class="red" style=" display:block; float:right; font-weight:bold;">￥${flight.fPrice*0.5+30}</h4>
</div>
<table class="table">
  <tr>
    <td>儿童票</td>
    <td>￥${flight.fPrice*0.5}/人</td>
    <td>x1</td>
  </tr>
  <tr>
    <td>航意险</td>
    <td>￥30/人</td>
    <td>x1</td>
  </tr>
</table>

<div class="order-discount">
    </div>
</div>




</div>


<div class="text-center mar-top-10">
  <input id="agree" type="checkbox" name="choice" value="1">&nbsp;我已阅读并接受免责条款、费用扣除、退保等在内的重要事项，其中包括 <a href="">《网络电子客票协议》</a> <a href="">《航意险说明》</a> <a href="">《延误险说明》</a> <a href="">《保险经纪委托协议》</a><br/>
  <input id="submitOrder" type="submit" value="提交订单" class="btn btn-danger mar-top-20" disabled="disabled" > 
</div>

</form>


<!-- 添加乘机人弹框 -->
<div id="rev" style="display:none">
	<div class="modal-body" >
       <div>
     <input name="input" type="text" class="form-control input-sm w200" style=" display: inline-block;" placeholder="姓名">
     <select name="select" class="form-control input-sm w150" style=" display: inline-block;">
            <option value="成人" selected="selected">成人（12岁以上）</option>
            <option value="儿童">儿童（0-12岁）</option>
     </select>
  </div>
  <div class="mar-top-10">
     <select name="select" class="form-control input-sm w150" style=" display: inline-block;">
            <option value="身份证" selected="selected">身份证</option>
     </select>
     <input name="input" type="text" class="form-control input-sm w200" style=" display: inline-block;" placeholder="证件号码">
  </div>
    </div>
			
	<div class="modal-footer mar-top-5">
		 <button type="button" class="btn btn-primary" onClick="">确认添加</button>	
         <button type="button" class="btn btn-default" onClick="">取消</button>
	</div>
</div>

</form>

<script type="text/javascript">
	$(function(){
		$("#agree").click(function(){
			if($("#agree").attr("checked")){
				$("#agree").removeAttr("checked");
				$("#submitOrder").attr("disabled","disabled");
			}else{
				$("#agree").attr("checked","checked");
				$("#submitOrder").removeAttr("disabled");
			}
		});
	})
</script>
<script type="text/javascript">

    $(function() {
        $('.bubbleinfo').each(function() {
            var distance = 10;
            var time = 10;
            var hideDelay = 100;

            var hideDelayTimer = null;

            var beingShown = false;
            var shown = false;
            var trigger = $('.trigger', this);
            var info = $('.popup', this).css('opacity', 0);


            $([trigger.get(0), info.get(0)]).mouseover(function() {
                if (hideDelayTimer) clearTimeout(hideDelayTimer);
                if (beingShown || shown) {
                    // don't trigger the animation again
                    return;
                } else {
                    // reset position of info box
                    beingShown = true;

                    info.css({
                        top: 30,
                        left:0,
                        display: 'block'
                    }).animate({
                        top: '-=' + distance + 'px',
                        opacity: 1
                    }, time, 'swing', function() {
                        beingShown = false;
                        shown = true;
                    });
                }

                return false;
            }).mouseout(function() {
                if (hideDelayTimer) clearTimeout(hideDelayTimer);
                hideDelayTimer = setTimeout(function() {
                    hideDelayTimer = null;
                    info.animate({
                        top: '-=' + distance + 'px',
                        opacity: 0
                    }, time, 'swing', function() {
                        shown = false;
                        info.css('display', 'none');
                    });

                }, hideDelay);

                return false;
            });
        });
    });
    
  
</script>


    
    
    
<script>
$(document).ready(function() {	

	
	$('.zw2').on('click', function(){  //添加乘机人弹框
      layer.open({
	  type: 1,
	  title: '添加乘机人',
      area: ['400px', 'auto'],
      fix: false, //不固定
      maxmin: false,
      content: $('#rev'),
      });
    });

});
</script>
 
<script>
$('.explain').hide();
$('.safe').mouseenter(
		function(){
			$('.explain').show();
			}
).mouseleave(
		function(){
			$('.explain').hide();
			}
)

$('.instruction').hide();
$('.tuigaiqian').click(
		function(){
			$('.instruction').toggle();
			}
)
</script>


<script type="text/javascript">
$('.btn btn-danger mar-top-20').click(
		function(){
			
			
		}
		
		)


</script>


</body>
</html>
