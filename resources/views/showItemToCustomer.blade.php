@extends('layouts.customerView')

@section('category-list')
	
	@foreach($foodCategory as $category)
		<a href="{{ route('customer.allView',['category' => $category->category])  }}" class="list-group-item">{{ $category->category  }}</a>
	@endforeach

@endsection


@section('recent-food-item')

	@foreach($foodItem as $item)

		@if($item->status == "recent")

			<div class="col-sm-4">
				<div class="text-center well">
				<img src="{{ $item->photo }}" class="img-rounded" width="100%" height="150px">
					<h3><strong></strong> <i>{{ $item->name }}</i></h3>
					<h4><strong>Price: </strong> <i>{{ $item->price }} tk</i></h4>
					
					<a href="{{ route('item.show',['id' => $item->id])}}"><button class="btn btn-info">Show</button></a>

					<a href="{{ route('item.edit',['id' => $item->id])}}"><button class="btn btn-warning">Edit</button></a>

					<form action="{{ route('item.destroy',['id' => $item->id]) }}" method="post" style="display: inline-block;">
					    {{ csrf_field() }}

						<input type="hidden" name="_method" value="DELETE">

						<button class="btn btn-danger">Delete</button>

					</form>
				</div>
			</div>
		@endif

	@endforeach

@endsection



@section('special-food-item')

	@foreach($foodItem as $item)

		@if($item->status == "special")

			<div class="col-sm-4">
				<div class="text-center well">
				<img src="{{ $item->photo }}" class="img-rounded" width="100%" height="150px">
					<h3><strong></strong> <i>{{ $item->name }}</i></h3>
					<h4><strong>Price: </strong> <i>{{ $item->price }} tk</i></h4>
					
					<a href="{{ route('item.show',['id' => $item->id])}}"><button class="btn btn-info">Show</button></a>

					<a href="{{ route('item.edit',['id' => $item->id])}}"><button class="btn btn-warning">Edit</button></a>

					<form action="{{ route('item.destroy',['id' => $item->id]) }}" method="post" style="display: inline-block;">
					    {{ csrf_field() }}

						<input type="hidden" name="_method" value="DELETE">

						<button class="btn btn-danger">Delete</button>

					</form>
				</div>
			</div>
		@endif

	@endforeach

@endsection



@section('all-food-item')

	@foreach($foodItem as $item)

		@if($item->status == "normal")

			<div class="col-sm-4">
				<div class="text-center well">
				<img src="{{ $item->photo }}" class="img-rounded" width="100%" height="150px">
					<h3><strong></strong> <i>{{ $item->name }}</i></h3>
					<h4><strong>Price: </strong> <i>{{ $item->price }} tk</i></h4>

					<a href="{{ route('item.show',['id' => $item->id])}}"><button class="btn btn-info">Show</button></a>

					<a href="{{ route('item.edit',['id' => $item->id])}}"><button class="btn btn-warning">Edit</button></a>

					<form action="{{ route('item.destroy',['id' => $item->id]) }}" method="post" style="display: inline-block;">
					    {{ csrf_field() }}

						<input type="hidden" name="_method" value="DELETE">

						<button class="btn btn-danger">Delete</button>

					</form>
				</div>
			</div>

			 
		@endif

	@endforeach

@endsection



