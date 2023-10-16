<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Area;
use App\Models\Task;
use App\Models\Vendor;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        \App\Models\User::factory(10)->create();

        Vendor::create([
            'name' => 'O2',
        ]);
        Vendor::create([
            'name' => 'NE',
        ]);
        Vendor::create([
            'name' => 'BO',
        ]);
        Vendor::create([
            'name' => 'BA',
        ]);
        Vendor::create([
            'name' => 'AI',
        ]);


        Area::create([
            'name' => 'area 1',
        ]);
        Area::create([
            'name' => 'area 2',
        ]);
        Area::create([
            'name' => 'area 3',
        ]);
        Area::create([
            'name' => 'area 4',
        ]);


        for ($x = 1; $x <= 5; $x++) {

            for ($p = 1; $p <= 5; $p++) {
                Task::create([
                    'area_id' => $p,
                    'vendor_id' => $x,
                    'jumlah' => 2 * $x,
                ]);
            }
        }
    }
}
