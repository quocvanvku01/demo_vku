@extends('admin_layout')
@section('admin_content') 

<div class="top-dang-bai-viet">
	<p>Danh sách đề cương</p>
</div>

<select name="" id="select_khoa">
	<option value="0">All</option>
	<option value="1" <?php if($id_khoa == 1) echo "selected" ?> >Khoa Khoa học máy tính</option>
	<option value="2" <?php if($id_khoa == 2) echo "selected" ?> >Khoa Kỹ thuật máy tính</option>
	<option value="3" <?php if($id_khoa == 3) echo "selected" ?> >Khoa Kinh tế số và Thương mại điện tử</option>
</select>

<h3 class="title_select_khoa">Danh sách đề cương {{$ten_khoa}}</h3>

<script>
	$(document).ready(function() {
		$('#select_khoa').on('change', function () {
			var url = $(this).val();
			if (url) { 
				window.location.href = window.location.origin + '/vku/danh-sach-de-cuong/' + url;
			}
          return false;
      });
	});
</script>

<table class="danh-sach-de-cuong" border="1px" cellspacing="0" style="margin-bottom: 100px">
	<thead>
		<tr>
			<td>STT</td>
			<td>Tên đề cương</td>
			<td>Giảng viên phụ trách</td>
			<td></td>
			<td></td>
			<td>Xem</td>
			<td>Sửa</td>
			<td>Xoá</td>
		</tr>
	</thead> 

	<tbody>
		<?php $stt_dsdc = 1; ?>
		@foreach($all_decuong as $value_decuong)
		<tr>
			<td>{{$stt_dsdc}}</td>
			<td>{{$value_decuong->tenhocphan}}</td>
			<td>{{$value_decuong->hodem}} {{$value_decuong->ten}}</td>
			@if($value_decuong->has_dghp == 0)
			<td>
				<a href="{{URL::to('danh-gia-hoc-phan/'.$value_decuong->id_decuong)}}" class="add-dsdc">Thêm đánh giá học phần</a>
			</td>
			@else
			<td>
				<a href="{{URL::to('edit-danh-gia-hoc-phan/'.$value_decuong->id_decuong)}}" class="edit-dsdc">Sửa đánh giá học phần</a>
			</td>
			@endif
			@if($value_decuong->has_khgd == 0)
			<td>
				<a href="{{URL::to('ke-hoach-giang-day/'.$value_decuong->id_decuong)}}" class="add-dsdc">Thêm Kế hoạch giảng dạy và học</a>
			</td> 
			@else
			<td>
				<a href="{{URL::to('edit-ke-hoach-giang-day/'.$value_decuong->id_decuong)}}" class="edit-dsdc">Sửa Kế hoạch giảng dạy và học</a>
			</td>
			@endif
			<td class="list-icon l-icon-views">
				<a href="{{URL::to('xem-de-cuong/'.$value_decuong->id_decuong)}}">
					<img src="{{ asset('./public/Images/icons/views.png')}}">
				</a>
			</td>
			<td class="list-icon">
				<a href="{{URL::to('edit-de-cuong/'.$value_decuong->id_decuong)}}">
					<img src="{{ asset('./public/Images/icons/edit.png')}}">
				</a>
			</td>
			<td class="list-icon">
				<a href="{{URL::to('delete-de-cuong/'.$value_decuong->id_decuong)}}">
					<img src="{{ asset('./public/Images/icons/delete.png')}}">
				</a>
			</td>
			<?php $stt_dsdc++; ?>
		</tr>
		@endforeach
	</tbody>
		
		
	
</table>


@endsection