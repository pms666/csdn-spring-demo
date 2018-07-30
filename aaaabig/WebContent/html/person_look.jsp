<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            用户查看
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/css/x-admin.css" media="all">
    </head>
    
    <body>
        <div class="x-body">
            <form class="layui-form layui-form-pane">
                <div class="layui-form-item">
                  <label for="L_title" class="layui-form-label1">
                        <span style="font-size: 24px; color: #00F; text-align:center">详细测试结果呈现</span>
                  </label>
                    
                </div>
                
              <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        用户名
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="${datam.name }" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                 <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        唯一标识
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="${datam.mark }" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        年龄
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="${datam.age }" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        性别
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="${datam.gender }" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        所属
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="${datam.belong }" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        测试用时
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="${datam.test_time}" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        测试时间
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" required lay-verify="title" value="${datam.testTime}" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                       
          </form>
    </div>
    <script src="${pageContext.request.contextPath }/lib/layui/layui.js" charset="utf-8">
        </script>
    <script src="${pageContext.request.contextPath }/js/x-layui.js" charset="utf-8">
        </script>
    <script>
            layui.use(['form','layer','layedit'], function(){
                $ = layui.jquery;
              var form = layui.form()
              ,layer = layui.layer
              ,layedit = layui.layedit;


                layedit.set({
                  uploadImage: {
                    url: "${pageContext.request.contextPath }/upimg.json" //接口url
                    ,type: 'post' //默认post
                  }
                })
  /* 
            //创建一个编辑器
            editIndex = layedit.build('L_content');
            
              

              //监听提交
              form.on('submit(add)', function(data){
                console.log(data);
                layer.alert("保存成功", {icon: 6},function () {
                    // 获得frame索引
                    var index = parent.layer.getFrameIndex(window.name);
                    //关闭当前frame
                    parent.layer.close(index);
                });
                return false;
              });
              
              
            }); */
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