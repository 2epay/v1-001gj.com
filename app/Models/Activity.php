<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Activity extends Model
{
    protected $table = 'activities';

    protected $fillable = [
        'title',
        'subtitle',
        'title_img',
        'content',
        'type',
        'money',
        'rate',
        'gift_limit_money',
        'direct_money',
        'date_desc',
        'start_at',
        'end_at',
        'on_line',
        'sort',
        'is_apply'
    ];

    public function apis()
    {
        return $this->belongsToMany('App\Models\Api', 'api_activity', 'activity_id', 'api_id');
    }
}
