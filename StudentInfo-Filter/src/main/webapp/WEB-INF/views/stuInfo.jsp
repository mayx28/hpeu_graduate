<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html lang="zh-CN">
<head>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <link rel="stylesheet" href="resource/plugins/bootstrap/css/bootstrap.css">
 <title>学生信息</title>
</head>
<body>
  <div class="container-fluid">
    <div class="row" id="studentInfo">
      <div class="col-xs-0 col-sm-1 col-md-2 col-lg-2"></div>
      <div class="col-xs-12 col-sm-10 col-md-8 col-lg-6">
        <div class="row">
          <ul class="nav nav-tabs">
            <li><a href="javascript:void(0)">方向:</a></li>
            <li><a href="InfoList">全部</a></li>
            <li class="li1"><a href="javascript:void(0)" >Java开发</a></li>
            <li class="li1"><a href="javascript:void(0)">大数据</a></li>
            <li class="li1"><a href="javascript:void(0)">软件测试</a></li>
            <li class="li1"><a href="javascript:void(0)">Web前端</a></li>
          </ul>
          <ul class="nav nav-tabs">
            <li><a href="javascript:void(0)">性别:</a></li>
            <li><a href="InfoList">全部</a></li>
            <li class="li2"><a  href="javascript:void(0)">男</a></li>
            <li class="li2"><a href="javascript:void(0)">女</a></li>
          </ul>
          
        </div>
        
        <div class="row">
          <table class="table table-bordered table-striped show_tab">
            <thead class="tableInfo">
              <tr class="success" id="show_tab_one">

                <th>编号</th>
                <th>学号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>专业</th>
                <th>方向</th>
                <th>技术</th>
                <th>能力</th>
              </tr>
            </thead>
            <tbody class="info">
              <c:forEach items="${students }" var ="student" >
              <tr class="show_tab_tr">
                <td>${student.id }</td>
                <td>${student.number }</td>
                <td>${student.name }</td>
                <td>${student.gender }</td>
                <td>${student.major }</td>
                <td>${student.direction }</td>
                <td>${student.skill }</td>
                <td>${student.ability }</td>
              </tr>
            </c:forEach>
          </tbody>
          <tfoot></tfoot>
        </table>

        <div class="box" id="box">              
          <input id="lastpage" type="button" value="上一页" 
          class="btn">
          <input id="curPage"  type="text" size="5">
          <input id="npage" type="button" class="btn" 
          value="确定">
          <input id="nextpage" type="button" class="btn" 
          value="下一页">
          <strong>共</strong>
          <input id="page" type="text" 
          size="1"  
          readonly="readonly" >
          <strong>页</strong>
          <strong>每页显示</strong>                   
          <input id="pageSize" type="text" value="4" 
          size="5" > <strong>行</strong>
          <input type="button"  value="确定" 
          class="btn sure">  
        </div>
      </div>
    </div>
    <div class="col-xs-0 col-sm-1 col-md-2 col-lg-3"></div>
  </div>
 </div>
<script src="resource/plugins/jQuery/jquery.min.js"></script>
<script src="resource/plugins/popper/popper.min.js"></script>
<script src="resource/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
    var pageSize=4;  // 每页显示的记录条数
          var curPage=0;   // 显示第curPage页
          var len;         // 总行数
          var page;        // 总页数
          $(function(){    
         len =$(".show_tab tr").length-1;   // 去掉表头
          page=len % pageSize==0 ? len/pageSize : Math.floor(len/pageSize)+1;// 根据记录条数，计算页数
          $("#page").val(page);
          curPage=1;
          displayPage();// 显示第一页
        $("#nextpage").click(function(){// 下一页
          if(curPage<page){
            curPage+=1;
          }
          else{
            alert("已是最后一页！");
          }
          displayPage();
        });
        $("#lastpage").click(function(){// 上一页
          if(curPage>1){
            curPage-=1;
          }
          else{
            alert("已是第一页！");
          }
          displayPage();
        });
        $("#npage").click(function(){// 跳到固定某一页
          var npage=parseInt(document.getElementById("curPage").value);
          if(npage>page||npage<1){
            alert("该页不存在！");
          }
          else{
            curPage=npage;
          }
          displayPage();
        });
      });
       // 首页滚动效果
       function displayPage(){  
       var begin=(curPage-1)*pageSize;// 起始记录号
       var end = begin + pageSize;
       if(end > len ) end=len;
       $(".show_tab tr").hide();
       $(".show_tab tr").each(function(i){
           if(i-1>=begin && i-1<end)// 显示第page页的记录
           {
             $("#show_tab_one").show();
             $(this).show();
             document.getElementById("curPage").value=curPage;
           }         
         });

     }        
     $(".sure").click(function(){
       curPage=0;   // 显示第curPage页
       pageSize=parseInt($("#pageSize").val());
          len =$(".show_tab tr").length-1;   // 去掉表头
          page=len % pageSize==0 ? len/pageSize : Math.floor(len/pageSize)+1;// 根据记录条数，计算页数
          $("#page").val(page);
          curPage=1;
          displayPage();// 显示第一页
        });
     
     var index=$(".li1");
     var a=$(".li2 ");
     
     $(index).on("click",function(){
      var i =$(index).index(this);
      var direction=$(index).eq(i).text();
      $.ajax({
        type:"POST",
        url:"getInfo",
        dataType:"JSON",
        data:{
          direction:direction
        },
        success: function(data){
          if(data==""){
            alert("无该方向学生！");
          }
          else{
            var html;
            $(".info").remove();
            $(".show_tab").append("<tbody class='info'>");
            $.each(data,function(i,item){

              html="<tr><td>"+item.id+"</td><td>"+item.stuNum+"</td><td>"+
              item.stuName+"</td><td>"+item.stuSex+"</td><td>"+item.stuPro+
              "</td><td>"+item.stuDir+"</td><td>"+item.stuSkill+"</td><td>"+item.stuAbility+
              "</td></tr>";
              $(".show_tab").append(html);
            })
            $(".show_tab").append("</tbody>");

          }
        }
      })
    })
     $(a).on("click",function(){
      var j=$(a).index(this);
      var sex=$(a).eq(j).text();
      $.ajax({
        type:"POST",
        url:"getGender",
        dataType:"JSON",
        data:{
          sex:sex
        },
        success: function(data){
          var html; 
          $(".info").remove();
          $(".show_tab").append("<tbody class='info'>")
          console.log(data);
          $.each(data,function(i,item){
            html="<tr><td>"+item.id+"</td><td>"+item.stuNum+"</td><td>"+
            item.stuName+"</td><td>"+item.stuSex+"</td><td>"+item.stuPro+
            "</td><td>"+item.stuDir+"</td><td>"+item.stuSkill+"</td><td>"+item.stuAbility+
            "</td></tr>";
            $(".show_tab").append(html);
          })
          $(".show_tab").append("</tbody>");

        }
      })
    });

  </script>
</body>
</html>