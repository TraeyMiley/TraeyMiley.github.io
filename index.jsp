<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>
<style>
body{font-family:"微软雅黑";
 	font-size:17px;
 	color:rgb(80%,10%,40%);
 	}
 div.foot{
 	        color:black;
			position:fixed;
	        left:600px;
			top:710px;
	}

div.picture{
			position:fixed;
	        left:340px;
	        top:520px;
	}


span.o{
		position:absolute;
		left:640px;
		top:25px
		list-style-type:none;
	}

ul
	{
		list-style-type:none;
		margin:1000;
		padding:20;
	}
li
	{
	float:left;
	}
a:link,a:visited
	{
		display:block;
		width:120px;
		font-weight:bold;
		color:#FFFFFF;
		background-color:#bebebe;
		text-align:center;
		padding:4px;
		text-decoration:none;
		text-transform:uppercase;
	}
a:hover, a:active
	{
	background-color:#cc0000;
	}
.t{
	 width:200px; height:100px;
	}
div.contend{ 
				position:fixed;
				width:700px;
				left:340px;
				top:170px;
}

div.sss{
			position:fixed;
			left:0px;
			top:115px;
}

div.dengluanniu{
					position:fixed;
					left:900px;
					top:120px;
}

div.table{
		    position:fixed;
			left:350px;
			top:250px;

}
div.hello{

        position:fixed;
	    left:900px;
	    top:80px;
       
}
	#qwe a:link,#qwe a:visited
	{
		width:90px;
		font-weight:bold;
		color:#696969;
		background-color:white;
		text-align:center;
		padding:1px;
		text-decoration:none;
		text-transform:uppercase;
	}
div.qwe{
        position:fixed;
        left:1300px;
	    top:79px;
}
	

</style>

	    <link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
	    <link rel="stylesheet" type="text/css" href="themes/icon.css">
	    <script type="text/javascript" src="jquery.min.js"></script>
	    <script type="text/javascript" src="jquery.easyui.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var url="/MvcInvite/indexajax";
	$('#ajax1').click(function(){		
		$.post(url,{},function(data,status){
			$('#dg').datagrid({				
				data:data.list,
			    columns:[[
			              {field:'informationName',title:'职业',width:80,sortable:true},
			              {field:'region',title:'区域',width:80,sortable:true},
			              {field:'date',title:'时间',width:80,sortable:true}			              
			          ]]				
			})
		})
	})
	var url2="/MvcInvite/indexforeign"
		$('#ajax2').click(function(){
			$.post(url3,{},function(data,status){		
				$('#dg2').datagrid({				
					data:data.list,
				    columns:[[
				              {field:'informationName',title:'职业',width:80,sortable:true},
				              {field:'region',title:'区域',width:80,sortable:true},
				              {field:'date',title:'时间',width:80,sortable:true}			              
				          ]]				
				})			
			})
		})	
	var url3="/MvcInvite/domestic"
	$('#ajax3').click(function(){
		$.post(url3,{},function(data,status){				
		})
	})		
})	
function formattitle(val,row)
{
	return "<span style='color:red;'><a href='refer.jsp?id="+row.informationID+"' target='_blank'>"+val+"</a></span>";	
	}
</script>

<script>
    function logout(){
    	document.forms[0].submit();
    }
</script>
</head>
<body>
<script language="JavaScript">
//document.getElementById("an").style.display = "none";
function query(){
	if(sessionScope.User==null){
		document.getElementById("an").style.display = "none";
	}
	else{
		document.getElementById("an").style.display = "";
	}
}
</script>
	<div id="head1"><img src="picture/n_v1bkuymc34e5lfthkg5uua (1).png" style="width:100%; height: 38px"></div>
	<div id="head2" style="height: 100px; ">
	    <div class="t" style="margin: 50px 50px 20px 50px;">
	    <img src="picture/logo-o.png" style="width: 241px; height: 70px" >	    
	    
	     <div class="hello" style="margin: 0px 300px 0px 340px; width: 438px;color:#696969" >
	    <strong>${sessionScope.User}你好</strong>
	    <div id="qwe" class="qwe"><a href='javascript:logout();'>注销</a> </div>
	    <!--  <input id="an" type="submit" value="注销"  name="submit" onClick="logout()" style="height: 38px; width: 50px"/>-->
	    </div>
	    </div>	
	           
	    <div class="sss" style="margin: 0px 30px 0px 340px; width: 438px">
	    <input type="text"  name="search" id="search" value="" style="width: 243px; height: 30px; "/>
	    <input type="submit" value="搜索"  name="searchbutton" style="height: 38px; width: 155px" onclick="window.open('https://www.baidu.com/')"/>	    
	    </div>
	    <div id="dengluanniu" class="dengluanniu" style="margin: 0px 300px 0px 340px; width: 438px">	   		 
	   		 <form>
				<a href="login.jsp">用户登录</a>
				<a href="companylogin.jsp">企业登录</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="register.jsp">用户注册</a>
				<a href="companyregister.jsp">企业注册</a>
				<a href="/MvcInvite/info">用户信息显示</a>
			</form>			
	   </div>		    
</div>
	<div class="contend">
	     <ul class="navcon" id="nav" style="width: 880px; ">
	        <li><a href="index.jsp">首页</a></li>
	        <li><a href="http://www.chinahr.com/langfang/jobs/57552/">互联网/通信</a></li>
	        <li><a href="http://www.chinahr.com/langfang/jobs/57559/">金融</a></li>
	        <li><a href="http://www.chinahr.com/langfang/jobs/57579/">消费品</a></li>
	        <li><a href="http://www.chinahr.com/langfang/jobs/">其他行业</a></li>
	     </ul>
	</div>		
	<div class="table" >		
	<div class="easyui-tabs" style="width:700px;height:250px">
		<div title="校园招聘" style="padding:10px">
			<table class="easyui-datagrid" style="width: 657px;height:250px"
			            data-options="url:'/MvcInvite/test',fitColumns:true,singleSelect:true">
			        <thead>
			            <tr>
			                <th data-options="field:'informationName',width:100" formatter="formattitle">职业</th>
			                <th data-options="field:'region',width:100">地区</th>      
			                <th data-options="field:'date',width:100">时间</th>       
			            </tr>
			        </thead>
			</table>
		</div>		
		<div title="海外招聘" style="padding:10px">
			<table class="easyui-datagrid" style="width: 657px;height:250px"
                        data-options="url:'/MvcInvite/test2',fitColumns:true,singleSelect:true">
			        <thead>
			            <tr>
			                <th data-options="field:'informationName',width:100" formatter="formattitle">职业</th>
			                <th data-options="field:'region',width:100">地区</th>      
			                <th data-options="field:'date',width:100">时间</th>       
			            </tr>
			        </thead>
            </table> 
		</div>		
		<div title="国内招聘"  style="padding:10px">
			<table class="easyui-datagrid" style="width: 657px;height:250px"
                        data-options="url:'/MvcInvite/test3',fitColumns:true,singleSelect:true">
			        <thead>
			            <tr>
			                <th data-options="field:'informationName',width:100" formatter="formattitle">职业</th>
			                <th data-options="field:'region',width:100">地区</th>      
			                <th data-options="field:'date',width:100">时间</th> 
			                      
			            </tr>
			        </thead>
            </table> 
		</div>		
		
	</div> 
 	 <!--  <table class="easyui-datagrid" id="dg" >
     </table>-->    
	</div>	
    <div class="picture" >
	   <img src="picture/1322639843462.jpg" style="height: 85px; width: 121px">
	         <img src="picture/t01c42dace02554338c.jpg" style="height: 85px; width: 121px">
	         <img src="picture/t01f8aa224bdfa71e76.jpg" style="height: 85px; width: 121px">
	         <img src="picture/t0111cf4eddb77dc44d.jpg"style="height: 85px; width: 121px">
	         <img src="picture/t017a84df7387d2b35c.jpg" style="height: 85px; width: 121px">
	         <img src="picture/t012bd230165d4957cd.jpg" style="height: 85px; width: 121px"><br>
	         <img src="picture/t0183240edc112fdf44.jpg" style="height: 85px; width: 121px">
	         <img src="picture/t01d68222495903aabd.jpg"style="height: 85px; width: 121px">
	         <img src="picture/t011c4f559bbf7d3e06.jpg"style="height: 85px; width: 121px">
	         <img src="picture/t017b740a0baf42bcef.jpg"style="height: 85px; width: 121px">
	         <img src="picture/t0139d55c6b34f9b3e0.jpg" style="height: 85px; width: 121px">
	         <img src="picture/t01d42c813a09f4d5a4.jpg"style="height: 85px; width: 121px">	   
	</div>
	<div class="foot" align="center">
	    <strong>版权信息@防灾科技学院</strong>	   
	</div>
</body>
</html>