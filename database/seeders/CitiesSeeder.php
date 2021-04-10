<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class CitiesSeeder extends Seeder
{
    /**
     * Auto generated seed file.
     */
    public function run()
    {
        \DB::table('cities')->delete();

        \DB::table('cities')->insert([
            0 => [
                'plateNo' => 1,
                'cityName' => 'Adana',
                'slug'=>str_slug('adana'),
            ],
            1 => [
                'plateNo' => 2,
                'cityName' => 'Adıyaman',
                'slug'=>str_slug('adiyaman'),
            ],
            2 => [
                'plateNo' => 3,
                'cityName' => 'Afyonkarahisar',
                'slug'=>str_slug('afyonkarahisar'),
            ],
            3 => [
                'plateNo' => 4,
                'cityName' => 'Ağrı',
                'slug'=>str_slug('agri'),
            ],
            4 => [
                'plateNo' => 5,
                'cityName' => 'Amasya',
                'slug'=>str_slug('amasya'),
            ],
            5 => [
                'plateNo' => 6,
                'cityName' => 'Ankara',
                'slug'=>str_slug('ankara'),
            ],
            6 => [
                'plateNo' => 7,
                'cityName' => 'Antalya',
                'slug'=>str_slug('antalya'),
            ],
            7 => [
                'plateNo' => 8,
                'cityName' => 'Artvin',
                'slug'=>str_slug('artvin'),
            ],
            8 => [
                'plateNo' => 9,
                'cityName' => 'Aydın',
                'slug'=>str_slug('aydin'),
            ],
            9 => [
                'plateNo' => 10,
                'cityName' => 'Balıkesir',
                'slug'=>str_slug('balikesir'),
            ],
            10 => [
                'plateNo' => 11,
                'cityName' => 'Bilecik',
                'slug'=>str_slug('bilecik'),
            ],
            11 => [
                'plateNo' => 12,
                'cityName' => 'Bingöl',
                'slug'=>str_slug('bingol'),
            ],
            12 => [
                'plateNo' => 13,
                'cityName' => 'Bitlis',
                'slug'=>str_slug('bitlis'),
            ],
            13 => [
                'plateNo' => 14,
                'cityName' => 'Bolu',
                'slug'=>str_slug('bolu'),
            ],
            14 => [
                'plateNo' => 15,
                'cityName' => 'Burdur',
                'slug'=>str_slug('burdur'),
            ],
            15 => [
                'plateNo' => 16,
                'cityName' => 'Bursa',
                'slug'=>str_slug('bursa'),
            ],
            16 => [
                'plateNo' => 17,
                'cityName' => 'Çanakkale',
                'slug'=>str_slug('canakkale'),
            ],
            17 => [
                'plateNo' => 18,
                'cityName' => 'Çankırı',
                'slug'=>str_slug('cankiri'),
            ],
            18 => [
                'plateNo' => 19,
                'cityName' => 'Çorum',
                'slug'=>str_slug('corum'),
            ],
            19 => [
                'plateNo' => 20,
                'cityName' => 'Denizli',
                'slug'=>str_slug('denizli'),
            ],
            20 => [
                'plateNo' => 21,
                'cityName' => 'Diyarbakır',
                'slug'=>str_slug('diyarbakir'),
            ],
            21 => [
                'plateNo' => 22,
                'cityName' => 'Edirne',
                'slug'=>str_slug('edirne'),
            ],
            22 => [
                'plateNo' => 23,
                'cityName' => 'Elazığ',
                'slug'=>str_slug('elazig'),
            ],
            23 => [
                'plateNo' => 24,
                'cityName' => 'Erzincan',
                'slug'=>str_slug('erzincan'),
            ],
            24 => [
                'plateNo' => 25,
                'cityName' => 'Erzurum',
                'slug'=>str_slug('erzurum'),
            ],
            25 => [
                'plateNo' => 26,
                'cityName' => 'Eskişehir',
                'slug'=>str_slug('eskisehir'),
            ],
            26 => [
                'plateNo' => 27,
                'cityName' => 'Gaziantep',
                'slug'=>str_slug('gaziantep'),
            ],
            27 => [
                'plateNo' => 28,
                'cityName' => 'Giresun',
                'slug'=>str_slug('giresun'),
            ],
            28 => [
                'plateNo' => 29,
                'cityName' => 'Gümüşhane',
                'slug'=>str_slug('gumushane'),
            ],
            29 => [
                'plateNo' => 30,
                'cityName' => 'Hakkari',
                'slug'=>str_slug('hakkari'),
            ],
            30 => [
                'plateNo' => 31,
                'cityName' => 'Hatay',
                'slug'=>str_slug('hatay'),
            ],
            31 => [
                'plateNo' => 32,
                'cityName' => 'Isparta',
                'slug'=>str_slug('isparta'),
            ],
            32 => [
                'plateNo' => 33,
                'cityName' => 'Mersin',
                'slug'=>str_slug('mersin'),
            ],
            33 => [
                'plateNo' => 34,
                'cityName' => 'İstanbul',
                'slug'=>str_slug('istanbul'),
            ],
            34 => [
                'plateNo' => 35,
                'cityName' => 'İzmir',
                'slug'=>str_slug('izmir'),
            ],
            35 => [
                'plateNo' => 36,
                'cityName' => 'Kars',
                'slug'=>str_slug('kars'),
            ],
            36 => [
                'plateNo' => 37,
                'cityName' => 'Kastamonu',
                'slug'=>str_slug('kastamonu'),
            ],
            37 => [
                'plateNo' => 38,
                'cityName' => 'Kayseri',
                'slug'=>str_slug('kayseri'),
            ],
            38 => [
                'plateNo' => 39,
                'cityName' => 'Kırklareli',
                'slug'=>str_slug('kirklareli'),
            ],
            39 => [
                'plateNo' => 40,
                'cityName' => 'Kırşehir',
                'slug'=>str_slug('kirsehir'),
            ],
            40 => [
                'plateNo' => 41,
                'cityName' => 'Kocaeli',
                'slug'=>str_slug('kocaeli'),
            ],
            41 => [
                'plateNo' => 42,
                'cityName' => 'Konya',
                'slug'=>str_slug('konya'),
            ],
            42 => [
                'plateNo' => 43,
                'cityName' => 'Kütahya',
                'slug'=>str_slug('kutahya'),
            ],
            43 => [
                'plateNo' => 44,
                'cityName' => 'Malatya',
                'slug'=>str_slug('malatya'),
            ],
            44 => [
                'plateNo' => 45,
                'cityName' => 'Manisa',
                'slug'=>str_slug('manisa'),
            ],
            45 => [
                'plateNo' => 46,
                'cityName' => 'Kahramanmaraş',
                'slug'=>str_slug('kahramanmaras'),
            ],
            46 => [
                'plateNo' => 47,
                'cityName' => 'Mardin',
                'slug'=>str_slug('mardin'),
            ],
            47 => [
                'plateNo' => 48,
                'cityName' => 'Muğla',
                'slug'=>str_slug('mugla'),
            ],
            48 => [
                'plateNo' => 49,
                'cityName' => 'Muş',
                'slug'=>str_slug('mus'),
            ],
            49 => [
                'plateNo' => 50,
                'cityName' => 'Nevşehir',
                'slug'=>str_slug('nevsehir'),
            ],
            50 => [
                'plateNo' => 51,
                'cityName' => 'Niğde',
                'slug'=>str_slug('nigde'),
            ],
            51 => [
                'plateNo' => 52,
                'cityName' => 'Ordu',
                'slug'=>str_slug('ordu'),
            ],
            52 => [
                'plateNo' => 53,
                'cityName' => 'Rize',
                'slug'=>str_slug('rize'),
            ],
            53 => [
                'plateNo' => 54,
                'cityName' => 'Sakarya',
                'slug'=>str_slug('sakarya'),
            ],
            54 => [
                'plateNo' => 55,
                'cityName' => 'Samsun',
                'slug'=>str_slug('samsun'),
            ],
            55 => [
                'plateNo' => 56,
                'cityName' => 'Siirt',
                'slug'=>str_slug('siirt'),
            ],
            56 => [
                'plateNo' => 57,
                'cityName' => 'Sinop',
                'slug'=>str_slug('sinop'),
            ],
            57 => [
                'plateNo' => 58,
                'cityName' => 'Sivas',
                'slug'=>str_slug('sivas'),
            ],
            58 => [
                'plateNo' => 59,
                'cityName' => 'Tekirdağ',
                'slug'=>str_slug('tekirdag'),
            ],
            59 => [
                'plateNo' => 60,
                'cityName' => 'Tokat',
                'slug'=>str_slug('tokat'),
            ],
            60 => [
                'plateNo' => 61,
                'cityName' => 'Trabzon',
                'slug'=>str_slug('trabzon'),
            ],
            61 => [
                'plateNo' => 62,
                'cityName' => 'Tunceli',
                'slug'=>str_slug('tunceli'),
            ],
            62 => [
                'plateNo' => 63,
                'cityName' => 'Şanlıurfa',
                'slug'=>str_slug('sanliurfa'),
            ],
            63 => [
                'plateNo' => 64,
                'cityName' => 'Uşak',
                'slug'=>str_slug('usak'),
            ],
            64 => [
                'plateNo' => 65,
                'cityName' => 'Van',
                'slug'=>str_slug('van'),
            ],
            65 => [
                'plateNo' => 66,
                'cityName' => 'Yozgat',
                'slug'=>str_slug('yozgat'),
            ],
            66 => [
                'plateNo' => 67,
                'cityName' => 'Zonguldak',
                'slug'=>str_slug('zonguldak'),
            ],
            67 => [
                'plateNo' => 68,
                'cityName' => 'Aksaray',
                'slug'=>str_slug('aksaray'),
            ],
            68 => [
                'plateNo' => 69,
                'cityName' => 'Bayburt',
                'slug'=>str_slug('bayburt'),
            ],
            69 => [
                'plateNo' => 70,
                'cityName' => 'Karaman',
                'slug'=>str_slug('karaman'),
            ],
            70 => [
                'plateNo' => 71,
                'cityName' => 'Kırıkkale',
                'slug'=>str_slug('kirikkale'),
            ],
            71 => [
                'plateNo' => 72,
                'cityName' => 'Batman',
                'slug'=>str_slug('batman'),
            ],
            72 => [
                'plateNo' => 73,
                'cityName' => 'Şırnak',
                'slug'=>str_slug('sirnak'),
            ],
            73 => [
                'plateNo' => 74,
                'cityName' => 'Bartın',
                'slug'=>str_slug('bartin'),
            ],
            74 => [
                'plateNo' => 75,
                'cityName' => 'Ardahan',
                'slug'=>str_slug('ardahan'),
            ],
            75 => [
                'plateNo' => 76,
                'cityName' => 'Iğdır',
                'slug'=>str_slug('igdir'),
            ],
            76 => [
                'plateNo' => 77,
                'cityName' => 'Yalova',
                'slug'=>str_slug('yalova'),
            ],
            77 => [
                'plateNo' => 78,
                'cityName' => 'Karabük',
                'slug'=>str_slug('karabuk'),
            ],
            78 => [
                'plateNo' => 79,
                'cityName' => 'Kilis',
                'slug'=>str_slug('kilis'),
            ],
            79 => [
                'plateNo' => 80,
                'cityName' => 'Osmaniye',
                'slug'=>str_slug('osmaniye'),
            ],
            80 => [
                'plateNo' => 81,
                'cityName' => 'Düzce',
                'slug'=>str_slug('duzce'),
            ],
        ]);
    }
}
