<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MemberSkill extends Model
{
    use HasFactory;

    public function description() {
        return $this->hasOne(Skill::class, 'skill', 'skill');
    }

    public function member() {
        return $this->belongsTo(Member::class, 'name', 'name');
    }

}

