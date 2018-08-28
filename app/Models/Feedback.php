<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $table = 'feedback';

    protected $guarded = [];

    public function member()
    {
        return $this->hasOne('App\\Models\\Member', 'id', 'member_id')->withTrashed();
    }
}
