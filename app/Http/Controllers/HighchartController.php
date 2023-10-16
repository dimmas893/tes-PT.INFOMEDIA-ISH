<?php

namespace App\Http\Controllers;

use App\Models\Area;
use App\Models\Task;
use App\Models\User;
use App\Models\Vendor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HighchartController extends Controller
{
    public function bar()
    {
        $vendor = Vendor::with('task')->get();
        $dataHasil = [];
        foreach ($vendor as $ven) {
            $data = [];
            foreach ($ven->task as $hasil) {
                array_push($data, $hasil->jumlah);
            }
            $hasil_buah = implode(', ', $data);
            $hasilGabungan = $ven->name . ', ' . $hasil_buah;
            $dataHasil[] = $hasilGabungan;
        }
        $areas = Area::pluck('name')->toArray();
        // $areaHasil =  implode(', ', $areas);
        // dd($areas);
        return view('diagram.bar', compact('dataHasil', 'areas'));
    }

    public function pie()
    {
        $vendor = Vendor::with('task')->get();
        $data = [];
        foreach ($vendor as $ven) {
            $jumlahTask = [];
            foreach ($ven->task as $hasil) {
                array_push($jumlahTask, $hasil->jumlah);
            }

            $row['vendor'] = $ven->name;
            $row['jumlahtask'] = array_sum($jumlahTask);

            array_push($data, $row);
        }
        // dd($data);
        return view('diagram.pie', compact('data'));
    }
}
