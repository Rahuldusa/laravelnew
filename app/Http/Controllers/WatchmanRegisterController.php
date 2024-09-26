<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use App\Models\WatchmanDetail;
use Illuminate\Support\Facades\Auth; 

class WatchmanRegisterController extends Controller
{
    public function showRegisterWatchmanForm()
    {
        return view('admin.register_watchman');
    }

 


    public function registerWatchman(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'mobile' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|confirmed|min:8',
            'qualifiacation' => 'required|string|max:255',
            'experience' => 'required|string|max:255',
            'aadhar_no' => 'required|string|max:255',
            'address' => 'required|string|max:255',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        // Create a new user
        $user = User::create([
            'name' => $request->name,
            'mobile' => $request->mobile,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'type' => 4, 
        ]);

        // Store the resident details
        WatchmanDetail::create([
            'user_id' => $user->id,
            'admin_id' => Auth::id(),
            'name' => $request->name,
            'mobile' => $request->mobile,
            'email' => $request->email,
            'qualifiacation' => $request->qualifiacation,
            'experience' => $request->experience,
            'aadhar_no' => $request->aadhar_no,
            'address' => $request->address,
        ]);

        return redirect()->route('admin.view_watchman')->with('status', 'Watchman registered successfully.');
    }

    public function showWatchmanList()
{
    // Fetch all watchman records
    $watchmen = WatchmanDetail::with('user')->get(); // Use 'with' to include related user info

    // Return the view with the watchmen data
    return view('admin.watchman_list', compact('watchmen'));
}

public function viewWatchman($id)
{
    $watchman = WatchmanDetail::with('user')->findOrFail($id);
    return view('admin.view_watchman', compact('watchman'));
}

public function editWatchman($id)
{
    $watchman = WatchmanDetail::findOrFail($id);
    return view('admin.edit_watchman', compact('watchman'));
}

public function updateWatchman(Request $request, $id)
{
    $watchman = WatchmanDetail::findOrFail($id);

    // Validation
    $request->validate([
        'name' => 'required|string|max:255',
        'mobile' => 'required|string|max:255',
        'email' => 'required|string|email|max:255',
        'qualifiacation' => 'required|string|max:255',
        'experience' => 'required|string|max:255',
        'aadhar_no' => 'required|string|max:255',
        'address' => 'required|string|max:255',
    ]);

    // Update the watchman details
    $watchman->update($request->all());

    // Update the user details as well
    $watchman->user->update([
        'name' => $request->name,
        'email' => $request->email,
    ]);

    return redirect()->route('admin.watchman-list')->with('status', 'Watchman updated successfully.');
}

public function deleteWatchman($id)
{
    $watchman = WatchmanDetail::findOrFail($id);

    // Delete the watchman details and associated user record
    $watchman->user->delete();  // Deletes the user record
    $watchman->delete();        // Deletes the watchman details record

    return redirect()->route('admin.watchman-list')->with('status', 'Watchman deleted successfully.');
}

}
