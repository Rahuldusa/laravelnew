@extends('layouts.admin')

@section('title', 'Add New Activity')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <h5>Add New Activity</h5>
        </div>
        <div class="card-body">
            <form action="{{ route('admin.activities.store') }}" method="POST">
                @csrf
                <div class="form-group">
                    <label for="activity_name">Activity Name</label>
                    <input type="text" name="activity_name" class="form-control" placeholder="Enter activity name" required>
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea name="description" class="form-control" rows="4" placeholder="Enter activity description" required></textarea>
                </div>
                <div class="form-group">
                    <label for="activity_date">Activity Date</label>
                    <input type="date" name="activity_date" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="charge_per_participant">Charge Per Participant</label>
                    <input type="number" name="charge_per_participant" class="form-control" placeholder="Enter charge per participant" required>
                </div>
                <div class="form-group">
                    <label for="max_participants">Maximum Participants</label>
                    <input type="number" name="max_participants" class="form-control" placeholder="Enter maximum participants" required>
                </div>
                <button type="submit" class="btn btn-primary mt-3">Add Activity</button>
            </form>
        </div>
    </div>
</div>
@endsection
