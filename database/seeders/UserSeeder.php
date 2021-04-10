<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'user_name'=>'myscherzo',
            'password'=>bcrypt(123456),
            'email'=>'aydinbek97@gmail.com',
            'name'=>'Aydın BEKOĞLU',          
            'created_at'=>now(),
            'updated_at'=>now(),
            'auth'=>(0)
        ]);
    }
}
