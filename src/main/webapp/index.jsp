<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<style>
		.dual-list .list-group {
			margin-top: 8px;
		}

		.list-left li, .list-right li {
			cursor: pointer;
		}

		.list-arrows {
			padding-top: 100px;
		}

		.list-arrows button {
			margin-bottom: 20px;
		}
		.list-group {
			overflow: auto;
			max-height: 400px;
		}

		.list-left {
			margin-left: 50px;
		}

		.modal-cus {
			width: 1200px;
		}

		@media only screen and (max-width: 992px) {
			.list-left {
				margin-left: 0px;
			}

			.list-arrows {
				padding-top: 0px;
			}
			.modal-dialog {
				width: auto;
				margin: 10px;
			}
		}
	</style>
</head>
<body>
	<h1>Hello</h1>
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
		Launch demo modal
	</button>

	<!-- Modal -->
	<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" id="myModal">
		<div class="modal-dialog modal-lg modal-cus" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Gán th? qu?</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="dual-list list-left col-md-5">
							<div class="row text-center">
								<h3>Danh sách GDV</h3>
							</div>
							<div class="well">
								<div class="row">
									<div class="col-md-10">
										<div class="input-group">
											<span class="input-group-addon glyphicon glyphicon-search"></span>
											<input type="text" name="SearchDualList" class="form-control" placeholder="search" />
										</div>
									</div>
									<div class="col-md-2">
										<div class="btn-group">
											<a class="btn btn-default selector" title="select all"><i class="glyphicon glyphicon-unchecked"></i></a>
										</div>
									</div>
								</div>
								<ul class="list-group">
									<li class="list-group-item">bootstrap-duallist></li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
									<li class="list-group-item">bootstrap-duallist></li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
									<li class="list-group-item">bootstrap-duallist></li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
									<li class="list-group-item">bootstrap-duallist></li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
									<li class="list-group-item">bootstrap-duallist></li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
									<li class="list-group-item">bootstrap-duallist></li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
									<li class="list-group-item">bootstrap-duallist></li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
									<li class="list-group-item">bootstrap-duallist></li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
									<li class="list-group-item">bootstrap-duallist></li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
									<li class="list-group-item">bootstrap-duallist></li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
									<li class="list-group-item">bootstrap-duallist></li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
									<li class="list-group-item">bootstrap-duallist></li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
								</ul>
							</div>
						</div>

						<div class="list-arrows col-md-1 text-center">
							<button class="btn btn-default btn-sm move-left">
								<span class="glyphicon glyphicon-chevron-left"></span>
							</button>

							<button class="btn btn-default btn-sm move-right">
								<span class="glyphicon glyphicon-chevron-right"></span>
							</button>
						</div>

						<div class="dual-list list-right col-md-5">
							<div class="row text-center">
								<h3>Danh sách GDV ?ã ch?n</h3>
							</div>
							<div class="well">
								<div class="row">
									<div class="col-md-2">
										<div class="btn-group">
											<a class="btn btn-default selector" title="select all"><i class="glyphicon glyphicon-unchecked"></i></a>
										</div>
									</div>
									<div class="col-md-10">
										<div class="input-group">
											<input type="text" name="SearchDualList" class="form-control" placeholder="search" />
											<span class="input-group-addon glyphicon glyphicon-search"></span>
										</div>
									</div>
								</div>
								<ul class="list-group">
									<li class="list-group-item">Cras justo odio</li>
									<li class="list-group-item">Dapibus ac facilisis in</li>
									<li class="list-group-item">Morbi leo risus</li>
									<li class="list-group-item">Porta ac consectetur ac</li>
									<li class="list-group-item">Vestibulum at eros</li>
								</ul>
							</div>
						</div>

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script>
	$(function () {

		$('body').on('click', '.list-group .list-group-item', function () {
			$(this).toggleClass('active');
		});
		$('.list-arrows button').click(function () {
			var $button = $(this), actives = '';
			if ($button.hasClass('move-left')) {
				actives = $('.list-right ul li.active');
				actives.clone().appendTo('.list-left ul');
				actives.remove();
			} else if ($button.hasClass('move-right')) {
				actives = $('.list-left ul li.active');
				actives.clone().appendTo('.list-right ul');
				actives.remove();
			}
		});
		$('.dual-list .selector').click(function () {
			var $checkBox = $(this);
			if (!$checkBox.hasClass('selected')) {
				$checkBox.addClass('selected').closest('.well').find('ul li:not(.active)').addClass('active');
				$checkBox.children('i').removeClass('glyphicon-unchecked').addClass('glyphicon-check');
			} else {
				$checkBox.removeClass('selected').closest('.well').find('ul li.active').removeClass('active');
				$checkBox.children('i').removeClass('glyphicon-check').addClass('glyphicon-unchecked');
			}
		});
		$('[name="SearchDualList"]').keyup(function (e) {
			var code = e.keyCode || e.which;
			if (code == '9') return;
			if (code == '27') $(this).val(null);
			var $rows = $(this).closest('.dual-list').find('.list-group li');
			var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
			$rows.show().filter(function () {
				var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
				return !~text.indexOf(val);
			}).hide();
		});

	});
</script>
</body>
</html>