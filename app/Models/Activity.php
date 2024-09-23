<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Activity extends Model
{
    use HasFactory;

    // Define the fillable fields for mass assignment protection
    protected $fillable = [
        'activity_name',
        'description',
        'activity_date',
        'charge_per_participant',
        'max_participants',
    ];
}
