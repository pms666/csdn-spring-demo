<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            用户管理-编辑
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="../css/x-admin.css" media="all">
    </head>
    
    <body>
        <div class="x-body">
        <!-- <form class="layui-form" > -->
            <form class="layui-form" id="form1">
            <input type="hidden" name="id" value="${user.id }">
                <div class="layui-form-item">
                    <label for="L_email" class="layui-form-label">
                        用户名称</label>
                    <div class="layui-input-inline">
                    <%-- 添加属性name="${name }"  --%>
                        <input type="text" name="name" value="${user.name }" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">必填</div>
                </div>
                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        性别
                    </label>
                    <div class="layui-inline">
                        <div class="layui-input-inline">
                       <!--      <input type="radio" name="sex" value="0" checked title="男">
                            <input type="radio" name="sex" value="1" title="女"> -->
                              <input type="text" name="sex" value="${user.sex }" >
                        </div>
                    </div>
                </div>
                <!--多添加 name="userRows"  -->
                <div class="layui-form-item">
                    <label for="L_city" class="layui-form-label">
                        用户角色
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_city"
                         name="userRows"  
                        value="${user.userRows }"   
                        class="layui-input">
                    </div>
                    
                </div>
                <div class="layui-form-item layui-form-text">
                    <label for="L_sign" class="layui-form-label">
                        备注信息
                    </label>
                    <div class="layui-input-block">
                        <textarea placeholder="随便写些什么刷下存在感" id="L_sign" name="sign" autocomplete="off"
                        class="layui-textarea" style="height: 80px;"></textarea>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_sign" class="layui-form-label">
                    </label>
                 <!--    
                  <button class="layui-btn" key="set-mine" lay-filter="save" lay-submit>
                        提交
                    </button> -->
                         <input name="Submit" type="submit" class="buttonface02" value="  修 改  " onClick="xiugai2(${user.id })">
            &nbsp;&nbsp;
                </div>
                </div>
            </form>
        <!-- </div>
        <script src="../lib/layui/layui.js" charset="utf-8">
        </script>
        <script src="../js/x-layui.js" charset="utf-8">
        </script>
        <script>
            layui.use(['form','layer'], function(){
                $ = layui.jquery;
              var form = layui.form()
              ,layer = layui.layer;
            
             
              //监听提交
              form.on('submit(save)', function(data){
                console.log(data);
                layer.alert("提交成功", {icon: 6},function () {
                    // 获得frame索引
                    var index = parent.layer.getFrameIndex(window.name);
                    //关闭当前frame
                    parent.layer.close(index);
                });
                return false;
              });
              
              
            });
        </script>  -->
              <script>
function xiugai2(id)
{
	var str = confirm("是否确定密码");
	if(str == true)
	{
		document.getElementById("form1").action="../test/userUpdate2.do";
	}
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
        
        <script>
        var _hmt = _hmt || [];
        (function() {
          var hm = document.createElement("script");
          var s = document.getElementsByTagName("script")[0]; 
          s.parentNode.insertBefore(hm, s);
        })();
        </script>
    </body>

</html>