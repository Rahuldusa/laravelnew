<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateActivitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('activities', function (Blueprint $table) {
            $table->id();  // Primary Key (Auto-increment)
            $table->string('activity_name');  // Name of the activity
            $table->text('description');  // Description of the activity
            $table->date('activity_date');  // Date of the activity
            $table->decimal('charge_per_participant', 8, 2);  // Charge per participant (decimal field)
            $table->integer('max_participants');  // Maximum number of participants
            $table->timestamps();  // Created at and Updated at fields
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('activities');
    }
}
