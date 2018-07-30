<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            用户管理-查看
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
            <blockquote class="layui-elem-quote">
                <img src="../${user.filesrc }" class="layui-circle" style="width:50px;float:left">
					     <!--          var res=document.getElementById("img").src;
					var  root_href='根目录路径';
					res=document.getElementById("img").src.replace(root_href,''); -->
                <dl style="margin-left:80px; color:#019688">
                <dt><span >${user.id }</span> <span >aaa</span></dt>
                <dd style="margin-left:0">显示内容</dd>
              </dl>
            </blockquote>
            <div class="pd-20">
              <table  class="layui-table" lay-skin="line">
                <tbody>
                  <tr>
                    <th  width="80">性别：</th>
                    <td>${user.sex }</td>
                  </tr>
                  <tr>
                    <th>注册时间：</th>
                    <td>${user.date}</td>
                  </tr>
                  <tr>
                    <th>角色：</th>
                    <td>${user.userRows }</td>
                  </tr>
               
                  <tr>
                    <th>其他</th>
                    <td>无</td>
                  </tr>
                </tbody>
              </table>
            </div>
        </div>
        <script src="../lib/layui/layui.js" charset="utf-8">
        </script>
        <script src="../js/x-layui.js" charset="utf-8">
        </script>
        <script>
            layui.use(['form','layer'], function(){
                $ = layui.jquery;
              var form = layui.form()
              ,layer = layui.layer;
            
              //自定义验证规则
              form.verify({
                nikename: function(value){
                  if(value.length < 5){
                    return '昵称至少得5个字符啊';
                  }
                }
                ,pass: [/(.+){6,12}$/, '密码必须6到12位']
                ,repass: function(value){
                    if($('#L_pass').val()!=$('#L_repass').val()){
                        return '两次密码不一致';
                    }
                }
              });

              console.log(parent);
              //监听提交
              form.on('submit(add)', function(data){
                console.log(data);
                //发异步，把数据提交给php
                layer.alert("增加成功", {icon: 6},function () {
                    // 获得frame索引
                    var index = parent.layer.getFrameIndex(window.name);
                    //关闭当前frame
                    parent.layer.close(index);
                });
                return false;
              });
              
              
            });
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