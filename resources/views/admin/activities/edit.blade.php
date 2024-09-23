<!-- resources/views/admin/activities/edit.blade.php -->
@extends('layouts.admin')

@section('title', 'Edit Activity')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <h5>Edit Activity</h5>
        </div>
        <div class="card-body">
            <form action="{{ route('admin.activities.update', $activity->id) }}" method="POST">
                @csrf
                @method('PUT')
                
                <div class="mb-3">
                    <label for="activity_name" class="form-label">Activity Name</label>
                    <input type="text" name="activity_name" class="form-control" value="{{ $activity->activity_name }}" required>
                </div>

                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea name="description" class="form-control" required>{{ $activity->description }}</textarea>
                </div>

                <div class="mb-3">
                    <label for="activity_date" class="form-label">Activity Date</label>
                    <input type="date" name="activity_date" class="form-control" value="{{ $activity->activity_date }}" required>
                </div>

                <div class="mb-3">
                    <label for="charge_per_participant" class="form-label">Charge Per Participant</label>
                    <input type="number" name="charge_per_participant" class="form-control" value="{{ $activity->charge_per_participant }}" required>
                </div>

                <div class="mb-3">
                    <label for="max_participants" class="form-label">Max Participants</label>
                    <input type="number" name="max_participants" class="form-control" value="{{ $activity->max_participants }}" required>
                </div>

                <button type="submit" class="btn btn-primary">Update Activity</button>
            </form>
        </div>
    </div>
</div>
@endsection
