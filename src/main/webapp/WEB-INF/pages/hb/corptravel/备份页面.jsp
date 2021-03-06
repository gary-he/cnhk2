<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}/staticfile"/>
<html lang="zh-CN">
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
<!-- IconFont图标 -->
<link href="${ctx}/hb/css/iconfont.css" rel="stylesheet">
<script type="text/javascript" src="${ctx}/hb/js/jquery-1.9.1.min.js"></script>
<script src="${ctx}/js/hb/bootstrap.min.js"></script>
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
<body class="bg-body">
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
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">您好，孙靖 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="系统管理/修改密码.html">修改密码</a></li>
            <li><a href="#">退出</a></li>
          </ul>
        </li>       
      </ul>
<ul class="nav navbar-nav navbar-right nav-top-small">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="icon iconfont font14 " style=" vertical-align:middle;"  >&#xe62b;</i> 028-12345678 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">（或）028-12345678</a></li>
            <li><a href="#">（或）028-12345678</a></li>
            <!--<li role="separator" class="divider"></li>-->
          </ul>
        </li>
        
      </ul>
    <ul class="nav navbar-nav navbar-right nav-top-small">
        <li><a href="帮助中心/help.html">帮助中心</a></li>
        
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
        <li  class="active"><a href="search.html"><i class="icon iconfont icon-nav-block font24" >&#xe620;</i> 在线预订</a></li>
         <li ><a href="order/orderList.html"><i class="icon iconfont icon-nav-block font24" >&#xe61c;</i> 订单管理</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
    
  </div>
</nav>
<!-- header end -->
<!-- 搜索 -->
<div class="index-wall white " style=" ">
  <div class="container" style=" position:relative;">
    <form class="form-inline">
      <div class="form-group">
        <select name="" class="form-control">
          <option selected>单程</option>
          <option>往返</option>
        </select>
      </div>
      <div class="form-group mar-left-10">
        <label for="">出发城市</label>
        <input type="text" class="form-control" style="width:85px;" id="" value="成都" placeholder="">
      </div>
      <div class="form-group">
        <label for=""> — <a href="#" class="huan">换</a> —</label>
      </div>
       <div class="form-group">
        <label for="">到达城市</label>
        <input type="text" class="form-control" style="width:85px;" id="" value="北京" placeholder="">
      </div>
      <div class="form-group mar-left-10">
        <label for="">出发日期</label>
        <input type="text" class="form-control " style="width:110px;" id="" value="2016-01-13" placeholder="" onClick="WdatePicker()">
      </div>
      <div class="form-group mar-left-10">
        <label for="">返回日期</label>
        <input type="text" disabled class="form-control " id="" style="width:110px;" onClick="WdatePicker()" value="2016-01-13" placeholder="">
      </div>
      <div class="form-group mar-left-10">
        <select id="dropAirlines"  class="form-control" style=" width:120px;">
                            <option value="">全部航司</option>
                                <option value="3U">3U-川航</option>
                                <option value="8C">8C-东星</option>
                                <option value="8L">8L-祥鹏</option>
                                <option value="9C">9C-春秋</option>
                                <option value="BK">BK-奥凯</option>
                                <option value="CA">CA-国航</option>
                                <option value="CN">CN-新华</option>
                                <option value="CZ">CZ-南航</option>
                                <option value="DR">DR-瑞丽航空</option>
                                <option value="DZ">DZ-东海</option>
                                <option value="EU">EU-成都(鹰联)</option>
                                <option value="FM">FM-上航</option>
                                <option value="FU">FU-福州航空</option>
                                <option value="G5">G5-华夏</option>
                                <option value="GJ">GJ-长龙航空</option>
                                <option value="GS">GS-天津</option>
                                <option value="GX">GX-广西航空</option>
                                <option value="GY">GY-多彩贵州航空</option>
                                <option value="HO">HO-吉祥</option>
                                <option value="HU">HU-海航</option>
                                <option value="JD">JD-首都(金鹿)</option>
                                <option value="JR">JR-幸福</option>
                                <option value="KN">KN-联航</option>
                                <option value="KY">KY-昆航</option>
                                <option value="MF">MF-厦航</option>
                                <option value="MU">MU-东航</option>
                                <option value="NS">NS-河北</option>
                                <option value="PN">PN-西部</option>
                                <option value="QW">QW-青岛</option>
                                <option value="SC">SC-山东</option>
                                <option value="TV">TV-西藏</option>
                                <option value="UQ">UQ-乌鲁木齐航空</option>
                                <option value="VD">VD-鲲鹏</option>
                                <option value="Y8">Y8-扬子江快运航空</option>
                                <option value="YI">YI-英安</option>
                                <option value="ZH">ZH-深航</option>
                        </select>
      </div>
      <button type="submit" class="btn btn-warning mar-left-10">搜索</button>
    </form>
  </div>
</div>
<!-- 搜索结束 -->

<!-- 日期开始 -->
<div class="container mar-bottom-15 ">
  <div class=" bor-solid-1" style=" background:#EFF2F5;">
    <div class="arrow-left"><a href="#" style="">&nbsp;</a></div>
    <div class="arrow-right"><a href="#" style="">&nbsp;</a></div>
    <ul class="nav nav-tabs nav-justified ">
     <li role="presentation" class="active"><a href="#">01-11<br>周一</a></li>
     <li role="presentation"><a href="#">01-12<br>周二</a></li>
     <li role="presentation"><a href="#">01-13<br>周三</a></li>
     <li role="presentation"><a href="#">01-14<br>周四</a></li>
     <li role="presentation"><a href="#">01-15<br>周五</a></li>
     <li role="presentation"><a href="#">01-16<br>周六</a></li>
     <li role="presentation"><a href="#">01-17<br>周日</a></li>
    </ul>
    
  </div>
</div>
<!-- 日期结束 -->

<!-- 列表开始 -->
<div class="container mar-bottom-30 ">
  <div class="hangbanlist">
    <div>
      <!-- 表头 -->
      <ul class="list-inline bor-bottom-solid-1  ">
        <li class="w-percentage-25"><img src="${ctx}/hb/img/air/3U.png" width="24" height="24"> <strong> 川航</strong> 3U8891<span class="gray-999 font12 mar-left-10">机型：空客320（中）</span></li>
        <li class="text-right w80"> <strong class="time ">16:30</strong></li>
        <li class=""> —— </li>
        <li class="w80"> <strong class="time ">23:30</strong></li>
        <li class="w100 text-right"> 成都双流T2</li>
        <li class=""> —— </li>
        <li class=" w100"> 北京首都T1 </li>
        <li class="w-percentage-20 text-center"> <span class="gray-999 ">机建 + 燃油：</span><span class="gray-999 rmb font12">￥50 + ￥20</span></li>
      </ul>
      <!-- 表头结束 -->
      <!-- 表BODY -->
      <div class="collapse " id="collapseExample2" style=" display:block;">
        <div class="hangbanlist-body " style=" background-color:#FEFCFC;">
        
        
          <ul class="list-inline">
            <li class="w-percentage-20"><strong class="blue-0093dd">特殊舱位(D)</strong></li>
            <li  class="w-percentage-25">座位数：≥9</li>
            <li  class="w-percentage-25">票面价：<span class="rmb">￥1070</span></li>
            <li  class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥1020</strong> <span class="gray font12">1.9折</span></li>
            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='pay/insurance.html';">订票</button></li>
          </ul>
          
          
          <ul class="list-inline">
            <li class="w-percentage-20">80折(M)</li>
            <li  class="w-percentage-25">座位数：≥9</li>
            <li  class="w-percentage-25">票面价：<span class="rmb">￥1070</span></li>
            <li  class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥998</strong></li>
            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='pay/insurance.html';">订票</button></li>
          </ul>
          
          
          <!-- 更多舱位 -->
          <div class="panel " style="display:none;  background-color:#FEFCFC;" >
            <ul class="list-inline">
            <li class="w-percentage-20"><strong class="blue-0093dd">特殊舱位(D)</strong></li>
            <li  class="w-percentage-25">座位数：≥9</li>
            <li  class="w-percentage-25">票面价：<span class="rmb">￥1070</span></li>
           
            
            <li  class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥1020</strong> <span class="gray font12">1.9折</span></li>
            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='pay/insurance.html';">订票</button></li>
          </ul>
          <ul class="list-inline">
            <li class="w-percentage-20"><strong class=" red">特惠(D)</strong></li>
            <li  class="w-percentage-25">座位数：≤5</li>
            <li  class="w-percentage-25">票面价：<span class="rmb">￥2980</span></li>
           
            
            <li  class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥2560</strong></li>
            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='pay/insurance.html';">订票</button></li>
          </ul>
          <ul class="list-inline">
            <li class="w-percentage-20"><strong class="red">紧急通道(D)</strong></li>
            <li  class="w-percentage-25">座位数：=1</li>
            <li  class="w-percentage-25">票面价：<span class="rmb">￥1070</span></li>
            
            
            <li  class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥1020</strong> <span class="gray font12">1.9折</span></li>
            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='pay/insurance.html';">订票</button></li>
          </ul>
          <ul class="list-inline">
            <li class="w-percentage-20">80折(M)</li>
            <li  class="w-percentage-25">座位数：≥9</li>
            <li  class="w-percentage-25">票面价：<span class="rmb">￥1070</span></li>
            
            
            <li  class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥998</strong></li>
            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='pay/insurance.html';">订票</button></li>
            
          </ul> 
          </div>
          <!-- 更多舱位 结束 -->
          <div class=" lh30 text-right"> <a href="#" class="mar-right-20 font12 flip" >更多舱位</a></div>
        </div>
      </div> 
      <!-- 表BODY 结束 --> 
    </div>
    
    <div>
      <!-- 表头 -->
      <ul class="list-inline bor-bottom-solid-1  ">
        <li class="w-percentage-25"><img src="${ctx}/hb/img/air/CA.png" width="24" height="24"> <strong>国航</strong> CA4109<span class="gray-999 font12 mar-left-10">机型：空客320（中）</span></li>
        <li class="text-right w80"> <strong class="time ">16:30</strong></li>
        <li class=""> —— </li>
        <li class="w80"> <strong class="time ">23:30</strong></li>
        <li class="w100 text-right"> 成都双流T2</li>
        <li class=""> —— </li>
        <li class=" w100"> 北京首都T1 </li>
        <li class="w-percentage-20 text-center"> <span class="gray-999 ">机建 + 燃油：</span><span class="gray-999 rmb font12">￥50 + ￥20</span></li>
      </ul>
      <!-- 表头结束 -->
      <!-- 表BODY -->
      <div class="collapse" id="collapseExample" style=" display:block;">
        <div class="hangbanlist-body " style=" background-color:#FEFCFC;">
          <ul class="list-inline">
            <li class="w-percentage-20"><strong class="blue-0093dd">特殊舱位(D)</strong></li>
            <li  class="w-percentage-25">座位数：≥9</li>
            <li  class="w-percentage-25">票面价：<span class="rmb">￥1070</span></li>
           
            
            <li  class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥1020</strong> <span class="gray font12">1.9折</span></li>
            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='pay/insurance.html';">订票</button></li>
          </ul>
          <ul class="list-inline">
            <li class="w-percentage-20"><strong class=" red">特惠(D)</strong></li>
            <li  class="w-percentage-25">座位数：≤5</li>
            <li  class="w-percentage-25">票面价：<span class="rmb">￥2980</span></li>
           
            
            <li  class="w-percentage-20 ">优惠价：<strong class="rmb orange-f60 font16">￥2560</strong></li>
            <li class="pull-right "><button type="button" class="btn btn-danger btn-sm" onClick="window.location.href ='pay/insurance.html';">订票</button></li>
          </ul>
        </div>
      </div> 
      <!-- 表BODY 结束 --> 
    </div>
    
    
    <!-- 分页 -->
  <nav class=" pull-right ">
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
      
  </ul>
</nav>
  <!-- 分页结束 -->
  <div class="clearfix"></div>
  </div>
 
 
  

</div>
<!-- 列表结束 -->

<script type="text/javascript"> 
$(document).ready(function(){
$(".flip").click(function(){
    $(".panel").slideToggle("");
  });
});
</script>
</body>
</html>
