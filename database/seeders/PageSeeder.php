<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class PageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $pages=['Hakkımızda', 'Misyon', 'Vizyon'];
        $count=0;

        foreach($pages as $page)
        {
            $count++;
            DB::table('pages')->insert([
                'title'=>$page,
                'slug'=>str_slug($page),
                'image'=>'https://www.thebalancesmb.com/thmb/mGudbjLJV7ZHJHjf9yXHUn0IbNE=/1333x1000/smart/filters:no_upscale()/improve-your-small-business-2951413-556a7d287050409bbd876af010f74be6.png',
                'content'=>'lorem asdasdkajsldas jk asjdk a sjakdhaskjld asdhjashdlkjas  
                            sadhaskd  asdaskjld as dhjkasdhlkjas hjsdhaskjld ash dsaldkjas al 
                            asdkjlas vnmbvl  jksldh askldyhasldh  jaskıdhyaslıuynary ahd nassdha',
                'order'=>$count,
                'created_at'=>now(),
                'updated_at'=>now()
            ]);
        }
    }
}
