<?php 
include("header.html");
define('thehelper_functions', TRUE);
?>
<script type="text/javascript">
            $(document).ready(function(){
                
            });
            function sendPushNotification(id){
                var data = $('form#'+id).serialize();
                $('form#'+id).unbind('submit');                
                $.ajax({
                    url: "/var/www/html/flix_mates/admin/gcm_server_php/send_message.php",
                    type: 'GET',
                    data: data,
                    beforeSend: function() {
                         
                    },
                    success: function(data, textStatus, xhr) {
                          $('.txt_message').val("");
                    },
                    error: function(xhr, textStatus, errorThrown) {
                         
                    }
                });
                return false;
            }
        </script>
<style type="text/css">
            .container{
                width: 950px;
                margin: 0 auto;
                padding: 0;
            }
            h1{
                font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
                font-size: 24px;
                color: #777;
            }
            div.clear{
                clear: both;
            }
            ul.devices{
                margin: 0;
                padding: 0;
            }
            ul.devices li{
                float: left;
                list-style: none;
                border: 1px solid #dedede;
                padding: 10px;
                margin: 0 15px 25px 0;
                border-radius: 3px;
                -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.35);
                -moz-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.35);
                box-shadow: 0 1px 5px rgba(0, 0, 0, 0.35);
                font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
                color: #555;
            }
            ul.devices li label, ul.devices li span{
                font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
                font-size: 12px;
                font-style: normal;
                font-variant: normal;
                font-weight: bold;
                color: #393939;
                display: block;
                float: left;
            }
            ul.devices li label{
                height: 25px;
                width: 50px;                
            }
            ul.devices li textarea{
                float: left;
                resize: none;
            }
            ul.devices li .send_btn{
                background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#0096FF), to(#005DFF));
                background: -webkit-linear-gradient(0% 0%, 0% 100%, from(#0096FF), to(#005DFF));
                background: -moz-linear-gradient(center top, #0096FF, #005DFF);
                background: linear-gradient(#0096FF, #005DFF);
                text-shadow: 0 1px 0 rgba(0, 0, 0, 0.3);
                border-radius: 3px;
                color: #fff;
            }
        </style>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Data Tables
			<small>advanced tables</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Tables</a></li>
			<li class="active">Data tables</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">

				<div class="box">
					<div class="box-header">
						<h3 class="box-title">Data Table With Full Features</h3>
					</div>
					<!-- /.box-header -->
	
        <?php
        include_once 'db_functions.php';
        $db = new DB_Functions();
        $users = $db->getAllUsers();
        if ($users != false)
            $no_of_users = mysql_num_rows($users);
        else
            $no_of_users = 0;
        ?>
        <div class="container">
            <h1>No of Devices Registered: <?php echo $no_of_users; ?></h1>
            <hr/>
            <ul class="devices">
                <?php
                if ($no_of_users > 0) {
                    ?>
                    <?php
                    while ($row = mysql_fetch_array($users)) {
                        ?>
                        <li>
                            <form id="<?php echo $row["id"] ?>" name="" method="post" onsubmit="return sendPushNotification('<?php echo $row["id"] ?>')">
                                <label>Name: </label> <span><?php echo $row["name"] ?></span>
                                <div class="clear"></div>
                                <label>Mobile:</label> <span><?php echo $row["mobile"] ?></span>
                                <div class="clear"></div>
                                <div class="send_container">                                
                                    <textarea rows="3" name="message" cols="25" class="txt_message" placeholder="Type message here"></textarea>
                                    <input type="hidden" name="regId" value="<?php echo $row["gcm_regid"] ?>"/>
                                    <input type="submit" class="send_btn" value="Send" onclick=""/>
                                </div>
                            </form>
                        </li>
                    <?php }
                } else { ?> 
                    <li>
                        No Users Registered Yet!
                    </li>
                <?php } ?>
            </ul>
        </div>
    				<div class="box-body">
						<table id="example2" class="table table-bordered table-striped"  data-toggle="table">
							<thead>
								<tr>
									<th data-field="id" data-sortable="true" class="col-xs-1" data-halign="center" data-align="left">User Id</th>
									<th data-field="first_name" data-sortable="true" class="col-xs-1" data-halign="center" data-align="left">Name</th>
									<th data-field="mobile" data-sortable="true" class="col-xs-1" data-halign="center" data-align="left">Mobile</th>
									<th data-field="email" data-sortable="true" class="col-xs-1" data-halign="center" data-align="left">Email</th>
									<th data-field="password" data-sortable="true" class="col-xs-1" data-halign="center" data-align="left">Password</th>
									<th data-field="log_time" data-sortable="true" class="col-xs-1" data-halign="center" data-align="left">Log Time</th>
									<th data-field="operate" data-formatter="operateFormatter" data-align="left" data-width="260" data-halign="center">Actions</th>
								</tr>
							</thead>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<footer class="main-footer">
	<div class="pull-right hidden-xs">
		<b>Version</b> 2.3.6
	</div>
	<strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
	reserved.
</footer>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
	<!-- Create the tabs -->
	<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
		<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
		<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
	</ul>
	<!-- Tab panes -->
	<div class="tab-content">
		<!-- Home tab content -->
		<div class="tab-pane" id="control-sidebar-home-tab">
			<h3 class="control-sidebar-heading">Recent Activity</h3>
			<ul class="control-sidebar-menu">
				<li>
				<a href="javascript:void(0)">
					<i class="menu-icon fa fa-birthday-cake bg-red"></i>

					<div class="menu-info">
						<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

						<p>Will be 23 on April 24th</p>
					</div>
				</a>
				</li>
				<li>
				<a href="javascript:void(0)">
					<i class="menu-icon fa fa-user bg-yellow"></i>

					<div class="menu-info">
						<h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

						<p>New phone +1(800)555-1234</p>
					</div>
				</a>
				</li>
				<li>
				<a href="javascript:void(0)">
					<i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

					<div class="menu-info">
						<h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

						<p>nora@example.com</p>
					</div>
				</a>
				</li>
				<li>
				<a href="javascript:void(0)">
					<i class="menu-icon fa fa-file-code-o bg-green"></i>

					<div class="menu-info">
						<h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

						<p>Execution time 5 seconds</p>
					</div>
				</a>
				</li>
			</ul>
			<!-- /.control-sidebar-menu -->

			<h3 class="control-sidebar-heading">Tasks Progress</h3>
			<ul class="control-sidebar-menu">
				<li>
				<a href="javascript:void(0)">
					<h4 class="control-sidebar-subheading">
						Custom Template Design
						<span class="label label-danger pull-right">70%</span>
					</h4>

					<div class="progress progress-xxs">
						<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
					</div>
				</a>
				</li>
				<li>
				<a href="javascript:void(0)">
					<h4 class="control-sidebar-subheading">
						Update Resume
						<span class="label label-success pull-right">95%</span>
					</h4>

					<div class="progress progress-xxs">
						<div class="progress-bar progress-bar-success" style="width: 95%"></div>
					</div>
				</a>
				</li>
				<li>
				<a href="javascript:void(0)">
					<h4 class="control-sidebar-subheading">
						Laravel Integration
						<span class="label label-warning pull-right">50%</span>
					</h4>

					<div class="progress progress-xxs">
						<div class="progress-bar progress-bar-warning" style="width: 50%"></div>
					</div>
				</a>
				</li>
				<li>
				<a href="javascript:void(0)">
					<h4 class="control-sidebar-subheading">
						Back End Framework
						<span class="label label-primary pull-right">68%</span>
					</h4>

					<div class="progress progress-xxs">
						<div class="progress-bar progress-bar-primary" style="width: 68%"></div>
					</div>
				</a>
				</li>
			</ul>
			<!-- /.control-sidebar-menu -->

		</div>
		<!-- /.tab-pane -->
		<!-- Stats tab content -->
		<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
		<!-- /.tab-pane -->
		<!-- Settings tab content -->
		<div class="tab-pane" id="control-sidebar-settings-tab">
			<form method="post">
				<h3 class="control-sidebar-heading">General Settings</h3>

				<div class="form-group">
					<label class="control-sidebar-subheading">
						Report panel usage
						<input type="checkbox" class="pull-right" checked>
					</label>

					<p>
					Some information about this general settings option
					</p>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label class="control-sidebar-subheading">
						Allow mail redirect
						<input type="checkbox" class="pull-right" checked>
					</label>

					<p>
					Other sets of options are available
					</p>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label class="control-sidebar-subheading">
						Expose author name in posts
						<input type="checkbox" class="pull-right" checked>
					</label>

					<p>
					Allow the user to show his name in blog posts
					</p>
				</div>
				<!-- /.form-group -->

				<h3 class="control-sidebar-heading">Chat Settings</h3>

				<div class="form-group">
					<label class="control-sidebar-subheading">
						Show me as online
						<input type="checkbox" class="pull-right" checked>
					</label>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label class="control-sidebar-subheading">
						Turn off notifications
						<input type="checkbox" class="pull-right">
					</label>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label class="control-sidebar-subheading">
						Delete chat history
						<a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
					</label>
				</div>
				<!-- /.form-group -->
			</form>
		</div>
		<!-- /.tab-pane -->
	</div>
</aside>
<!-- /.control-sidebar -->
<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
<div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- page script -->
<script>
function responseHandler(res) {
	return {
rows: res.data,
	      total: res.total
	}
}
$(function () {
		$("#example1").DataTable();
		$('#example2').DataTable({
			"sAjaxDataProp":"",
			"paging": true,
			"ordering": true,
			"info": true,
			"bProcessing": true,
			"sAjaxSource": "../server.php",
			"columns": [
			{ "data": "id" },
			{ "data": "first_name" },
			{ "data": "mobile" },
			{ "data": "email" },
			{ "data": "password" },
			{ "data": "log_time" },
			{"mRender": function ( data, type, row ) {
			return '<a class="table-delete" data-id="' + row[0] + '"><i class="fa fa-eye"></i></a>        <a href=add.html?id="'+row[0]+'"><i class="fa fa-edit"></i></a>        <a class="table-delete" data-id="' + row[0] + '"><i class="fa fa-trash"></i></a>';}
			},
			],
			"autoWidth": false,
			});
});
</script>
</body>
</html>
