<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GameList extends Model
{
	protected $table = "game_lists";
    protected $guarded = [];

    public function api()
    {
        return $this->belongsTo('App\Models\Api');
    }
}
