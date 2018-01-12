<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="resource/plugins/bootstrap/css/bootstrap.css">
    <title>新增学生</title>
</head>
<body>
 <div class="row information" id="addStudent" style="margin-top:20px;margin-left:-120px;">
    <div class="col-xs-0 col-sm-1 col-md-2 col-lg-4"></div>
    <div class="col-xs-12 col-sm-10 col-md-8 col-lg-6">
        <form class="form-horizontal"  action="addStudent">
            <div class="form-group">
                <label for="studentNumber" class="col-sm-2 control-label" >学号</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" id="studentNumber"
                    placeholder="请输入学号" name="stuNum">
                </div>
            </div>
            <div class="form-group">
                <label for="username" class="col-sm-2 control-label" >姓名</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="username" name="stuName"
                    placeholder="请输入学生姓名">
                </div>
            </div>
            <div class="form-group">
                <label for="username" class="col-sm-2 control-label" >专业</label>
                <div class="col-sm-10">
                    <select class="form-control" name="stuPro">
                        <option value="软件工程" >软件工程</option>
                        <option value="计算机科学与技术">信息与计算科学</option>
                        <option value="电子商务">物联网</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="username" class="col-sm-2 control-label">方向</label>
                <div class="col-sm-10">
                    <select class="form-control" name="stuDir">
                        <option value="Java开发">Java开发</option>
                        <option value="大数据">大数据</option>
                        <option value="Web前端">Web前端</option>
                        <option value="软件测试">软件测试</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="technology" class="col-sm-2 control-label">技术</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" id="technology" name="stuSkill"
                    placeholder="请输入技术分数">
                </div>
            </div>
            <div class="form-group">
                <label for="power" class="col-sm-2 control-label">能力</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" id="power" name="stuAbility"
                    placeholder="请输入能力分数">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="radio">
                        <label> <input type="radio" name="stuSex" checked value="男">男
                        </label> &nbsp;&nbsp; <label> <input type="radio" name="stuSex" value="女">女
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-success ">新增</button>
                    <button type="reset" class="btn btn-warning">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="resource/plugins/jQuery/jquery.min.js"></script>
<script src="resource/plugins/popper/popper.min.js"></script>
<script src="resource/plugins/bootstrap/js/bootstrap.min.js"></script> 
</body>
</html>