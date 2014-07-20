<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="utf-8">
    <title>格物</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="Example of Fluid Layout with Bootstrap version 2.0 from w3cschool.cc">
    <meta name="author" content="">

    
  </head>
  <body >
    <div class="container">
	<div class="row clearfix">
			<div class="col-md-12 column">
				<%@include file="/WEB-INF/pages/common/head.jsp"%>
			</div>
	</div>
      <div class="row-fluid">
        <div class="col-md-6 column">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Frontend</li>
              <li class="active"><a href="#">HTML 4.01</a></li>
              <li><a href="#">HTML5</a></li>
              <li><a href="#">CSS</a></li>
              <li><a href="#">JavaScript</a></li>
			  <li><a href="#">Twitter Bootstrap</a></li>
			  <li><a href="#">Firebug</a></li>
              <li class="nav-header">Backend</li>
              <li><a href="#">PHP</a></li>
              <li><a href="#">SQL</a></li>
              <li><a href="#">MySQL</a></li>
              <li><a href="#">PostgreSQL</a></li>
              <li><a href="#">MongoDB</a></li>
           </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="col-md-6 column">
          <div class="leaderboard">
            <h1>Learn. Practice. Develop.</h1>
            <p>w3cschool offers web development tutorials. We believe in Open Source. Love standards. And prioritize simplicity 				             and readability while serving content.</p>
            <p><a class="btn btn-success btn-large">Join w3cschool now</a></p>
          </div>
          <div class="row-fluid">
            <div class="span4">
              <h2>Learn</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn btn-success btn-large" href="#">Start Learning now</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Practice</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn btn-success btn-large" href="#">Start percticing now</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Develop</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn btn-success btn-large" href="#">Start developing now</a></p>
            </div><!--/span-->
          </div><!--/row-->
         </div>
	
	</div>
	
        <div class="row clearfix " style="margin-top:700px">
		<div class="col-md-12 column">
			<%@include file="/WEB-INF/pages/common/footer.jsp"%>
		</div>
	</div>

    </div><!--/.fluid-container-->
    
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>

  </body>
</html>
