<head>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>


@extends('layouts.admin')

@section('title', 'Activities List')

@section('content')
<div class="container">
    <div class="card">
        <div class="d-flex justify-content-between align-items-center p-3">
            <h5 class="mb-0">Activities List</h5>
            <a href="{{ route('admin.activities.create') }}" class="btn btn-primary mt-2">Add New Activity</a>
        </div>

        @if(session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        <div class="card-body">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>S.No.</th>
                        <th>Activity Name</th>
                        <th>Description</th>
                        <th>Date</th>
                        <th>Charge</th>
                        <th>Max Participants</th>
                        <th>Actions</th> <!-- Action column added -->
                    </tr>
                </thead>
                <tbody>
                    @foreach($activities as $activity)
                        <tr>
                            <td>{{ $loop->iteration }}</td> <!-- Serial number using loop iteration -->
                            <td>{{ $activity->activity_name }}</td>
                            <td>{{ $activity->description }}</td>
                            <td>{{ $activity->activity_date }}</td>
                            <td>{{ $activity->charge_per_participant }}</td>
                            <td>{{ $activity->max_participants }}</td>
                            <td>
    <a href="{{ route('admin.activities.edit', $activity->id) }}" class="btn btn-sm btn-warning">
        <i class="fas fa-edit"></i> <!-- Edit Icon -->
    </a>

    <form action="{{ route('admin.activities.destroy', $activity->id) }}" method="POST" style="display:inline-block;">
        @csrf
        @method('DELETE')
        <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this activity?')">
            <i class="fas fa-trash-alt"></i> <!-- Delete Icon -->
        </button>
    </form>
</td>

                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
