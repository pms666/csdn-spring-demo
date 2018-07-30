<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<title>用户管理</title>
<link rel="stylesheet" href="../css/x-admin.css" media="all">
<!-- 前台批量删除实现的头文件 -->
<link href="${pageContext.request.contextPath}/css/pager.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/css.css" type="text/css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/ligerUI/skins/Aqua/css/ligerui-dialog.css"/>
<link href="${pageContext.request.contextPath}/js/ligerUI/skins/ligerui-icons.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" language="JavaScript1.2" src="${pageContext.request.contextPath}/js/util.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-migrate-1.2.1.js"></script>
<script src="${pageContext.request.contextPath}/js/ligerUI/js/core/base.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/ligerUI/js/plugins/ligerDrag.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/js/ligerUI/js/plugins/ligerDialog.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/ligerUI/js/plugins/ligerResizable.jss" type="text/javascript"></script>


</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="../html/index.jsp">首页</a>
			<a><cite>用户管理</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<form class="layui-form x-center" action="" style="width: 500px">
			<div class="layui-form-pane" style="margin-top: 15px;">
				<div class="layui-form-item">
					<!-- <div class="layui-input-inline" style="width: 400px">
						<input type="text" name="username" placeholder="搜索内容"
							autocomplete="off" class="layui-input">
					</div> -->
				<!-- 	<div class="layui-input-inline" style="width: 80px">
						<button class="layui-btn" lay-submit="" lay-filter="sreach">
							<i class="layui-icon">&#xe615;</i>
						</button>
					</div> -->
				</div>
			</div>
		</form>
		<xblock>
			
			<!-- 删除所有的按钮 -->
		<button class="layui-btn layui-btn-danger" id="delete">	<i class="layui-icon">&#xe640;</i>批量删除 </button>
		<!-- <input id="delete" type="button" value="删除所选联系人" /> -->
		
		
		<button class="layui-btn" onclick="user_management_add('添加用户','../html/user_management_add.jsp','600','500')">
			<i class="layui-icon">&#xe608;</i>添加
		</button>

		<!-- <button class="layui-btn"onclick="user_management_add('添加用户','../test/userInsert.do?','600','500')">
			<i class="layui-icon">&#xe608;</i>添加
		</button> -->
		<button class="layui-btn layui-btn-danger">
			<i class="layui-icon"><img src="../images/daoru.png" width="15"
				height="15"></img></i>导入
		</button>
		<!--   <span class="x-right" style="line-height:25px">共有数据：88 条</span></xblock> -->
		<span class="x-right" style="line-height: 25px">共有数据：${page.totalRows}
			条</span></xblock>
		<table class="layui-table">
			<thead>
				<tr>
					<th><input	name="checkAll" type="checkbox" id="checkAll" value="checkbox1"></th>
					<th>ID</th>
					<th>用户名</th>
					<th>密码</th>
					<th>用户角色</th>
					<th>性别</th>
					<th>注册时间</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${page.datas }" var="user" varStatus="stat">
					<tr id="data_${stat.index } " >
						<td><input type="checkbox" id="box_${stat.index }" value="${user.id}"></td>
						<td>${user.id}</td>
						<%--               <c:forEach items="${page.datas }" var="newsLabel">
      <tr>
        <td class="td07">${newsLabel.name }</td>
        <td class="td07">${newsLabel.parent == null ? '无' : newsLabel.parent.name }</td>
        <td class="td07">${newsLabel.content }</td>
        <td class="td07"><a href="#" onClick="shanchu(${newsLabel.id}, ${page.pageno })">删除</a></td>
        <td class="td07"><a href="#" onClick="javascript:windowOpen('../test/toNewslabelUpdatePage.do?id=${newsLabel.id}','','',670,260,'no','yes','100','100')">修改</a>
        </td>
      </tr>
      </c:forEach> --%>

						  <td><u style="cursor:pointer" onclick="user_management_show('${user.name}','../test/toUserUpdateShow.do?id=${user.id }','10001','360','400')">${user.name}</u></td>
						<!--    <td><u style="cursor:pointer" onclick="user_management_show('宋加加','user_management_show.html','10001','360','400')">宋加加</u></td> -->
						<td>${user.password}</td>
						<td>${user. userRows }</td>
						<td>${user.sex}</td>
						<td>${user.date }</td>
						<td class="td-status"><span
							class="layui-btn layui-btn-normal layui-btn-mini"> 已启用 </span></td>
						<td class="td-manage"><a style="text-decoration: none"
							onclick="member_stop(this,'10001')" href="javascript:;"
							title="停用"> <i class="layui-icon">&#xe601;</i>
						</a> <a title="编辑"
							onclick="user_management_edit('编辑','../test/toUserUpdate2.do?id=${user.id }','4','','510')"
							class="ml-5" style="text-decoration: none"> <i
								class="layui-icon">&#xe642;</i>
						</a> <a style="text-decoration: none"
							onclick="user_management_password('修改密码','../test/toUserUpdate.do?id=${user.id }','10001','600','400')"
							title="修改密码"> <i class="layui-icon">&#xe631;</i>
						</a> 
						<%-- <td><a
						href="${pageContext.request.contextPath}/desktop/news/removeNews.do?nids=${newsmanage.nid}"
						onclick="return del()">删除</a></td> --%>
						<a title="删除" href="javascript:;"
							onclick="member_del(this,'${user.id}')"
							style="text-decoration: none"> <i class="layui-icon">&#xe640;</i>
						</a> 
						<%-- <a	href="${pageContext.request.contextPath}/test/userRemove.do?nids=${user.id}"
						onclick="return del()">删除</a> --%>
						</td>
					</tr>
					
				</c:forEach>
				<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
      <c:choose>
      	<%-- 共计一页的情况 --%>
      	<c:when test="${page.totalPages == 1 }">
	      <tr>
	        <td colspan="5" align="right" class="td07"><img src="../images/1.gif" width="4" height="5" align="absmiddle"> 首页　 <img src="../images/2.gif" width="3" height="5" align="absmiddle"> 上一页　 <img src="../images/2-2.gif" width="3" height="5" align="absmiddle"> 下一页　 <img src="../images/3.gif" width="4" height="5" align="absmiddle"> 末页　　共 ${page.pageno }/${page.totalPages } 页 ${page.totalRows } 条记录</td>
	      </tr>
      	</c:when>
      	<%-- 当前页为第一页的情况 --%>
      	<c:when test="${page.pageno == 1 }">
	      <tr>
	        <td colspan="5" align="right" class="td07"><img src="../images/1.gif" width="4" height="5" align="absmiddle"> 首页　 <img src="../images/2.gif" width="3" height="5" align="absmiddle"> 上一页　 <img src="../images/2-2.gif" width="3" height="5" align="absmiddle"> <a href="../test/userManage.do?pageno=${page.pageno + 1 }">下一页</a>　 <img src="../images/3.gif" width="4" height="5" align="absmiddle"> <a href="../test/userManage.do?pageno=${page.totalPages }">末页</a>　　共 ${page.pageno }/${page.totalPages } 页 ${page.totalRows } 条记录</td>
	      </tr>
      	</c:when>
      	<%-- 当前页为最后一页的情况 --%>
      	<c:when test="${page.pageno == page.totalPages }">
	      <tr>
	        <td colspan="5" align="right" class="td07"><img src="../images/1.gif" width="4" height="5" align="absmiddle"> <a href="../test/userManage.do?pageno=1">首页</a>　 <img src="../images/2.gif" width="3" height="5" align="absmiddle"> <a href="../test/userManage.do?pageno=${page.pageno - 1 }">上一页</a>　 <img src="../images/2-2.gif" width="3" height="5" align="absmiddle"> 下一页　 <img src="../images/3.gif" width="4" height="5" align="absmiddle"> 末页　　共 ${page.pageno }/${page.totalPages } 页 ${page.totalRows } 条记录</td>
	      </tr>
      	</c:when>
      	<%-- 当前页为中间页的情况 --%>
      	<c:otherwise>
	      <tr>
	        <td colspan="5" align="right" class="td07"><img src="../images/1.gif" width="4" height="5" align="absmiddle"> <a href="../test/userManage.do?pageno=1">首页</a>　 <img src="../images/2.gif" width="3" height="5" align="absmiddle"> <a href="../test/userManage.do?pageno=${page.pageno - 1 }">上一页</a>　 <img src="../images/2-2.gif" width="3" height="5" align="absmiddle"> <a href="../test/userManage.do?pageno=${page.pageno + 1 }">下一页</a>　 <img src="../images/3.gif" width="4" height="5" align="absmiddle"> <a href="../test/userManage.do?pageno=${page.totalPages }">末页</a>　　共 ${page.pageno }/${page.totalPages } 页 ${page.totalRows } 条记录</td>
	      </tr>
      	</c:otherwise>
      </c:choose> 
                    
			</tbody>
		</table>

		<div id="page"></div>
	</div>
	<br />
	<br />
	<br />
	<script src="../lib/layui/layui.js" charset="utf-8"></script>
	<script src="../js/x-layui.js" charset="utf-8"></script>
	<script>
            layui.use(['laydate','element','laypage','layer'], function(){
                $ = layui.jquery;//jquery
              laydate = layui.laydate;//日期插件
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层

              //以上模块根据需要引入
         /*    laypage({
                cont: 'page'
                ,pages: 100
                ,first: 1
                ,last: 100
                ,prev: '<em>  <</em>'
                ,next: '<em>></em>'
              });   */
             
             /*  laypage({
            	    cont: 'page',
            	    pages:  ${page.totalPages}, //可以叫服务端把总页数放在某一个隐藏域，再获取。假设我们获取到的是18
            	    ,first: ${page.pageno=1}
                    ,last: ${page.totalPages}
                    ,prev: '<em>  <</em>'
                    ,next: '<em>></em>'
            	    curr: function(){ //通过url获取当前页，也可以同上（pages）方式获取
            	        var page = location.search.match(../test/userManage.do?pageno=1);
            	        return page ? page[1] : 1;
            	    }(), 
            	    jump: function(e, first){ //触发分页后的回调
            	        if(!first){ //一定要加此判断，否则初始时会无限刷新
            	            location.href = '../test/userManage.do?pageno=${page.pageno +1}'+e.curr;
            	        }
            	    }
            	}); */
              /* 
            	      var laypageindex = laypage({
            	        cont: 'page', //容器。值支持id名、原生dom对象，jquery对象。
            	        pages: ${page.totalPages}, //通过后台拿到的总页数
            	        curr: ${page.pageno}, //初始化当前页
            	        first: ${page.pageno=1}, //将首页显示为数字1,。若不显示，设置false即可
            	        last:  ${page.totalPages}, //将尾页显示为总页数。若不显示，设置false即可
            	        prev: '<', //若不显示，设置false即可
            	        next: '>', //若不显示，设置false即可
            	        jump: function (obj, first) { //触发分页后的回调
            	          if (!first) { //点击跳页触发函数自身，并传递当前页：obj.curr
            	            SearchHotTag(obj.curr);
            	          }
            	        }
            	      }); */
            /*  
              laypage({
                  cont: 'page'
                  ,pages: ${page.totalPages}
                  ,first: ${page.pageno=1}
                  ,last: ${page.totalPages}
                  ,prev: '<em>  <</em>'
                  ,next: '<em>></em>'
                  
                });  */
        /*         
      	    laypage({
                  cont: 'page'
                  ,pages: ${page.totalPages}
                  ,first: ${page.pageno}
                  ,last: ${page.totalPages}
                  ,prev: '<em> 上一页</em>'
                  ,next: '<em>下一页</em>'
                	  curr: function(){ //通过url获取当前页，也可以同上（pages）方式获取
                	        var page = location.search.match('../test/userManage.do?pageno=${page.pageno}');
                	        return page ? page[1] : 1;
                	    }(), 
                	    jump: function(e, first){ //触发分页后的回调
                	        if(!first){ //一定要加此判断，否则初始时会无限刷新
                	            location.href = '../test/userManage.do?pageno=${page.pageno +1}'+e.curr;
                	        }
                	        if(!last){ //一定要加此判断，否则初始时会无限刷新
                	            location.href = '../test/userManage.do?pageno=${page.pageno -1}'+e.curr;
                	        }
                	        else{
                	        	
                	        	
                	        
                	        }
                	    }
                });
            	 */
                
                
                
                
                
                
                
                
                
              /* 
              <c:choose>
            	<c:when test="${page.totalPages == 1 }"> //只有一页情况下
      	    laypage({
                  cont: 'page'
                  ,pages: ${page.totalPages}
                  ,first: ${page.pageno}
                  ,last: ${page.totalPages}
                  ,prev: '<em> 上一页</em>'
                  ,next: '<em>下一页</em>'
                });
            	</c:when>
            
            	<c:when test="${page.pageno == 1 }">//第一页的情况
      	     
      	       
              laypage({
                  cont: 'page'
                  ,pages: ${page.totalPages}
                  ,first: ${page.pageno}
                  ,last: ${page.totalPages}
                  ,prev: '<em>  上一页</em>'
                  ,next: '<em> <a href="../test/userManage.do?pageno=${page.pageno +1}"> 下一页  </a> </em>'
                });
      	      
            	</c:when>
            	
            	<c:when test="${page.pageno == page.totalPages }">  //最后一页
      	   			    laypage({
                  cont: 'page'
                  ,pages: ${page.totalPages}
                  ,first: ${page.pageno}
                  ,last: ${page.totalPages}
                  ,prev: '<em> <a href="../test/userManage.do?pageno=${page.pageno -1}"> 上一页 </a> </em>'
                  ,next: '<em> 下一页 </em>'
                });
      	      	
      	          </c:when>
      	          
      	           
            	<c:otherwise>
      	      			    laypage({   //中间页
                  cont: 'page'
                  ,pages: ${page.totalPages}
                  ,first: ${page.pageno}
                  ,last: ${page.totalPages}    
                  ,prev: '<em> <a href="../test/userManage.do?pageno=${page.pageno -1 }">上一页  </a>  </em>'
                  ,next: '<em> <a href="../test/userManage.do?pageno=${page.pageno + 1}"> 下一页 </a>    </em>'
                });
            	</c:otherwise>
            	
            </c:choose>    */
               
              var start = {
                min: laydate.now()
                ,max: '2099-06-16 23:59:59'
                ,istoday: false
                ,choose: function(datas){
                  end.min = datas; //开始日选好后，重置结束日的最小日期
                  end.start = datas //将结束日的初始值设定为开始日
                }
              };
              
              var end = {
                min: laydate.now()
                ,max: '2099-06-16 23:59:59'
                ,istoday: false
                ,choose: function(datas){
                  start.max = datas; //结束日选好后，重置开始日的最大日期
                }
              };
              
            });

            //批量删除提交
             function delAll () {
                layer.confirm('确认要删除吗？',function(index){
                    //捉到所有被选中的，发异步进行删除
                    location.href="../test/userDelete.do?id="  ;
                    layer.msg('删除成功', {icon: 1});
                });
             } 
             
           /*   $(document).ready(function (){
            	 
            	 var idList= {user.id};
            	 
            	 $.post({
            		 url:"../test/dele"
            		 data:JSON.stringify(idList),
            		 contentType: "application/json",
            		 success:function (result) {
            			 
            		 }
            	 });
            	 
            	 
             }); */
             
        /*   // JavaScript Document 
             $(document).ready(function delAll() { 
            /*  // 全选 
             $("#allChk").click(function() { 
             $("input[name='subChk']").prop("checked",this.checked); 
             }); 
             // 单选 
             var subChk = $("input[name='subChk']") 
             subChk.click(function() { 
             $("#allChk").prop("checked", subChk.length == subChk.filter(":checked").length ? true:false); 
             });  */
             /* 批量删除 */ 
          /*
             $("#del_model").click(function() { 
             // 判断是否至少选择一项 
             var checkedNum = $("input[name='subChk']:checked").length; 
             if(checkedNum == 0) { 
             alert("请选择至少一项！"); 
             return; 
             } 
             // 批量选择 
             if(confirm("确定要删除所选项目？")) { 
             var checkedList = new Array(); 
             $("input[name='subChk']:checked").each(function() { 
             checkedList.push($(this).val()); 
             }); 
             $.ajax({ 
             type: "POST", 
             url: "deletemore", 
             data: {'delitems':checkedList.toString()}, 
              success: function(result) { 
             $("[name ='subChk']:checkbox").attr("checked", false); 
             window.location.reload(); 
             } 
             }); 
             } 
             }); 
             }); 
            

             success: function(result) { 
             $("[name = 'items']:checkbox").attr("checked", false); 
             window.location.reload(); 
             }  */

            	
             
             
             /*用户-添加*/
            function user_management_add(title,url,id,w,h){
                x_admin_show(title,url,w,h);
            }
            /*用户-查看*/
            function user_management_show(title,url,id,w,h){
                x_admin_show(title,url,w,h);
            }

             /*用户-停用*/
            function member_stop(obj,id){
                layer.confirm('确认要停用吗？',function(index){
                    //发异步把用户状态进行更改
                    $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="layui-icon">&#xe62f;</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="layui-btn layui-btn-disabled layui-btn-mini">已停用</span>');
                    $(obj).remove();
                    layer.msg('已停用!',{icon: 5,time:1000});
                });
            }

            /*用户-启用*/
            function member_start(obj,id){
                layer.confirm('确认要启用吗？',function(index){
                    //发异步把用户状态进行更改
                    $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="layui-icon">&#xe601;</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span>');
                    $(obj).remove();
                    layer.msg('已启用!',{icon: 6,time:1000});
                });
            }
            // 用户-编辑
           /*  function user_management_edit (title,url,id,w,h) */ 
          function user_management_edit (title,url,id,w,h){
                x_admin_show(title,url,w,h); 
            } 
            /*密码-修改*/
            function user_management_password(title,url,id,w,h){
                x_admin_show(title,url,w,h);  
            }
            /*用户-删除*/
            function member_del(obj,id){
                layer.confirm('确认要删除吗？',function(index){
                    //发异步删除数据
                    location.href="../test/userDelete.do?id=" + id ;
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!',{icon:1,time:1000});
                });
            }
            </script>
	<script>
        var _hmt = _hmt || [];
        (function() {
          var hm = document.createElement("script");
          var s = document.getElementsByTagName("script")[0]; 
          s.parentNode.insertBefore(hm, s);
        })();
        </script>


	<script type="text/javascript">
	$(
			function() {
				/** 获取上一次选中的部门数据 */
				var boxs = $("input[type='checkbox'][id^='box_']");
				/** 给全选按钮绑定点击事件  */
				$("#checkAll").click(function() {
					// this是checkAll  this.checked是true
					// 所有数据行的选中状态与全选的状态一致
					boxs.attr("checked", this.checked);
				})

				/** 给数据行绑定鼠标覆盖以及鼠标移开事件  */
				$("tr[id^='data_']").hover(function() {
				}, function() {
				})
				/* 删除栏目绑定点击事件 */
				$("#delete")
						.click(
								function() {
									/** 获取到用户选中的复选框  */
									var checkedBoxs = boxs.filter(":checked");
									if (checkedBoxs.length < 1) {
										$.ligerDialog.error("请选择一个需要一行！");
									} else {
										/** 得到用户选中的所有的需要删除的ids */
										var ids = checkedBoxs.map(function() {
											return this.value;
										})

										$.ligerDialog
												.confirm(
														"确认要删除吗?",
														"删除项目",
														function(r) {
															if (r) {
																//alert("删除："+ids.get());
																// 发送请求
																window.location = "${pageContext.request.contextPath}/test/userRemove.do?nids="
																		+ ids.get();
															}
														});
									}
								})
			})
</script>
</body>
</html>