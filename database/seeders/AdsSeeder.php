<?php

namespace Database\Seeders;

use Botble\Ads\Models\Ads;
use Botble\Base\Supports\BaseSeeder;
use Carbon\Carbon;
use Illuminate\Support\Str;

class AdsSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->uploadFiles('banners');

        Ads::query()->truncate();

        $items = [
            [
                'name' => 'Panel Ads',
                'location' => 'panel-ads',
            ],
        ];

        foreach ($items as $index => $item) {
            $item['order'] = $index + 1;
            $item['key'] = strtoupper(Str::random(12));
            $item['expired_at'] = Carbon::now()->addYears(5)->toDateString();
            $item['image'] = 'banners/' . ($index + 1) . '.jpg';
            $item['url'] = 'https://botble.com';

            Ads::query()->create($item);
        }
    }
}
