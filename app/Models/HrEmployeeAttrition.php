<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HrEmployeeAttrition extends Model
{
    use HasFactory;
    protected $table = 'hr_employee_attrition';
    protected $guarded = [];
}
