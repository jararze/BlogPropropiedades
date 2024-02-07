<?php

namespace Database\Seeders;

use Botble\ACL\Database\Seeders\UserSeeder;
use Botble\Base\Supports\BaseSeeder;
use Botble\Language\Database\Seeders\LanguageSeeder;

class DatabaseSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->prepareRun();

        $this->call([
            UserSeeder::class,
            LanguageSeeder::class,
            PageSeeder::class,
            MenuSeeder::class,
            WidgetSeeder::class,
            ContactSeeder::class,
            ThemeOptionSeeder::class,
            BlogSeeder::class,
            GallerySeeder::class,
            AdsSeeder::class,
            SettingSeeder::class,
        ]);

        $this->finished();
    }
}
