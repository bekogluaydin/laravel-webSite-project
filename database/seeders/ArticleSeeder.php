<?php

namespace Database\Seeders;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

use Illuminate\Database\Seeder;

class ArticleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker=Faker::create();
        for($i=0;$i<4;$i++)
        {   $title=$faker->sentence(6);
            DB::table('articles')->insert([
                'categoryID'=>rand(1,7),
                'cityPlateNo'=>rand(1,81),
                'userID'=>(1),
                'title'=>$title,
                'image'=>$faker->imageUrl(800, 400, 'cats', true, 'patiJoy'),
                'content'=>$faker->paragraph(6),
                'slug'=>str_slug($title),
                'created_at'=>$faker->dateTime('now'),
                'updated_at'=>now()
            ]);
        }
    }
}
