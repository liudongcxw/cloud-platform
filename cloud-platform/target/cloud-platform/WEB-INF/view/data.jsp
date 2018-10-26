<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="stylesheet" type="text/css" href="/cloud-platform/resources/css/jquery.dataTables.css">
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- jQuery -->
<script type="text/javascript" charset="utf8" src="/cloud-platform/resources/js/jquery-3.2.1.min.js"></script>
 
<!-- DataTables -->
<script type="text/javascript" charset="utf8" src="/cloud-platform/resources/js/jquery.dataTables.js"></script>
 
 
  <button id="example_button">获取选中的行</button>
 
<!--ç¬¬äºæ­¥ï¼æ·»å å¦ä¸ HTML ä»£ç -->
<div>  
    <table id="example" class="display dataTable">  
      <thead>  
        <th>姓名</th>  
        <th>位置</th>  
         <th>年龄</th>  
         <th>薪水</th>  
      </thead>  
      <tbody>  
        <tr>  
          <td>1张三</td>  
          <td>北京</td>  
          <th>23</th>  
          <th>￥5000</th>  
        </tr>  
        <tr>  
          <td>2李四</td>  
          <td>上海</td>  
          <th>24</th>  
          <th>￥4000</th>  
        </tr>  
        <tr>  
          <td>3王五</td>  
          <td>广州</td>  
          <th>25</th>  
          <th>￥7000</th>  
        </tr>  
        <tr>  
          <td>4赵六</td>  
          <td>深圳</td>  
          <th>26</th>  
          <th>￥10000</th>  
        </tr>  
        <tr>  
          <td>5赵六</td>  
          <td>深圳</td>  
          <th>27</th>  
          <th>￥10000</th>  
        </tr>  
        <tr>  
          <td>6赵六</td>  
          <td>深圳</td>  
          <th>28</th>  
          <th>￥10000</th>  
        </tr>  
        <tr>  
          <td>7赵六</td>  
          <td>深圳</td>  
          <th>29</th>  
          <th>￥10000</th>  
        </tr> 
         <tr>  
          <td>1张三</td>  
          <td>北京</td>  
          <th>23</th>  
          <th>￥5000</th>  
        </tr>  
        <tr>  
          <td>2李四</td>  
          <td>上海</td>  
          <th>24</th>  
          <th>￥4000</th>  
        </tr>  
        <tr>  
          <td>3王五</td>  
          <td>广州</td>  
          <th>25</th>  
          <th>￥7000</th>  
        </tr>  
        <tr>  
          <td>4赵六</td>  
          <td>深圳</td>  
          <th>26</th>  
          <th>￥10000</th>  
        </tr>  
        <tr>  
          <td>5赵六</td>  
          <td>深圳</td>  
          <th>27</th>  
          <th>￥10000</th>  
        </tr>  
        <tr>  
          <td>6赵六</td>  
          <td>深圳</td>  
          <th>28</th>  
          <th>￥10000</th>  
        </tr>  
        <tr>  
          <td>7赵六</td>  
          <td>深圳</td>  
          <th>29</th>  
          <th>￥10000</th>  
        </tr>   
      </tbody>  
    </table>  
</div>  
 
 <script>
<!--ç¬¬ä¸æ­¥ï¼åå§åDatatables-->
$(document).ready( function () {
	 table= $('#example').DataTable({
    	 columns: [
                   {data: "姓名"},
                   {data: "位置"},
                   {data: "年龄"},
                   {data: "薪水"}
               ]
    });
} );

//给行绑定选中事件
$('#example tbody').on( 'click', 'tr', function () {
    if ($(this).hasClass('selected')) {
        $(this).removeClass('selected');
    }
    else {
        table.$('tr.selected').removeClass('selected');
        $(this).addClass('selected');
    }
} );

//给按钮绑定点击事件
$("#example_button").click(function () {
    var column1 = table.row('.selected').data().姓名;
    var column2 = table.row('.selected').data().位置;
    var column3 = table.row('.selected').data().年龄;
    var column4 = table.row('.selected').data().薪水;
    alert("第一列内容："+column1 + "；第二列内容： " + column2+"第3列内容："+column3+"第4列内容："+column4);
});
</script>

</body>
</html>