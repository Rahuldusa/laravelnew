<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Activity;
use Illuminate\Http\Request;

class AdminActivityController extends Controller
{
    // Display a list of activities
    public function index()
    {
        // Fetch all activities from the database
        $activities = Activity::all();
        return view('admin.activities.index', compact('activities'));
    }

    // Show the form for creating a new activity
    public function create()
    {
        return view('admin.activities.new-activity');
    }

    // Store a new activity in the database
    public function store(Request $request)
    {
        // Validate the request data
        $validated = $request->validate([
            'activity_name' => 'required|string|max:255',
            'description' => 'required|string',
            'activity_date' => 'required|date',
            'charge_per_participant' => 'required|numeric',
            'max_participants' => 'required|integer',
        ]);

        // Create a new activity
        Activity::create($validated);

        // Redirect to the activities list with a success message
        return redirect()->route('admin.activities.index')->with('success', 'Activity added successfully!');
    }

    // Show the form for editing an existing activity
    public function edit($id)
    {
        // Find the activity by ID
        $activity = Activity::findOrFail($id);
        return view('admin.activities.edit', compact('activity'));
    }

    // Update the existing activity in the database
    public function update(Request $request, $id)
    {
        // Validate the request data
        $validated = $request->validate([
            'activity_name' => 'required|string|max:255',
            'description' => 'required|string',
            'activity_date' => 'required|date',
            'charge_per_participant' => 'required|numeric',
            'max_participants' => 'required|integer',
        ]);

        // Find the activity by ID and update it
        $activity = Activity::findOrFail($id);
        $activity->update($validated);

        // Redirect to the activities list with a success message
        return redirect()->route('admin.activities.index')->with('success', 'Activity updated successfully!');
    }

    // Delete an activity
    public function destroy($id)
    {
        // Find the activity by ID and delete it
        $activity = Activity::findOrFail($id);
        $activity->delete();

        // Redirect to the activities list with a success message
        return redirect()->route('admin.activities.index')->with('success', 'Activity deleted successfully!');
    }
}
