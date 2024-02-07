<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Blog\Models\Category;
use Botble\Language\Models\LanguageMeta;
use Botble\Menu\Facades\Menu;
use Botble\Menu\Models\Menu as MenuModel;
use Botble\Menu\Models\MenuLocation;
use Botble\Menu\Models\MenuNode;
use Botble\Page\Models\Page;
use Illuminate\Support\Arr;

class MenuSeeder extends BaseSeeder
{
    public function run(): void
    {
        $data = [
            [
                'name' => 'Main menu',
                'slug' => 'main-menu',
                'location' => 'main-menu',
                'items' => [
                    [
                        'title' => 'Home',
                        'url' => '/',
                        'icon_font' => 'elegant-icon icon_house_alt mr-5',
                        'children' => [
                            [
                                'title' => 'Home default',
                                'url' => '/',
                            ],
                            [
                                'title' => 'Home 2',
                                'reference_id' => 2,
                                'reference_type' => Page::class,
                            ],
                            [
                                'title' => 'Home 3',
                                'reference_id' => 3,
                                'reference_type' => Page::class,
                            ],
                        ],
                    ],
                    [
                        'title' => 'Travel',
                        'reference_id' => 2,
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Destination',
                        'reference_id' => 4,
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Hotels',
                        'reference_id' => 6,
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Lifestyle',
                        'reference_id' => 9,
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Blog',
                        'reference_id' => 4,
                        'reference_type' => Page::class,
                    ],
                    [
                        'title' => 'Galleries',
                        'url' => '/galleries',
                    ],
                    [
                        'title' => 'Blog layouts',
                        'url' => '/blog',
                        'children' => [
                            [
                                'title' => 'Grid layout',
                                'reference_id' => 9,
                                'reference_type' => Page::class,
                            ],
                            [
                                'title' => 'List layout',
                                'reference_id' => 7,
                                'reference_type' => Page::class,
                            ],
                            [
                                'title' => 'Big layout',
                                'reference_id' => 8,
                                'reference_type' => Page::class,
                            ],
                        ],
                    ],
                    [
                        'title' => 'Contact',
                        'reference_id' => 5,
                        'reference_type' => Page::class,
                    ],
                ],
            ],
            [
                'name' => 'Quick links',
                'slug' => 'quick-links',
                'items' => [
                    [
                        'title' => 'Homepage',
                        'url' => '/',
                    ],
                    [
                        'title' => 'Contact',
                        'reference_id' => 5,
                        'reference_type' => Page::class,
                    ],
                    [
                        'title' => 'Blog',
                        'reference_id' => 4,
                        'reference_type' => Page::class,
                    ],
                    [
                        'title' => 'Travel',
                        'reference_id' => 2,
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Galleries',
                        'url' => '/galleries',
                    ],
                ],
            ],
        ];

        MenuModel::query()->truncate();
        MenuLocation::query()->truncate();
        MenuNode::query()->truncate();

        foreach ($data as $index => $item) {
            $menu = MenuModel::query()->create(Arr::except($item, ['items', 'location']));

            if (isset($item['location'])) {
                $menuLocation = MenuLocation::query()->create([
                    'menu_id' => $menu->id,
                    'location' => $item['location'],
                ]);

                LanguageMeta::saveMetaData($menuLocation);
            }

            foreach ($item['items'] as $menuNode) {
                $this->createMenuNode($index, $menuNode, $menu->id);
            }

            LanguageMeta::saveMetaData($menu);
        }

        Menu::clearCacheMenuItems();
    }

    protected function createMenuNode(int $index, array $menuNode, int $menuId, int $parentId = 0): void
    {
        $menuNode['menu_id'] = $menuId;
        $menuNode['parent_id'] = $parentId;

        if (isset($menuNode['url'])) {
            $menuNode['url'] = str_replace(url(''), '', $menuNode['url']);
        }

        if (Arr::has($menuNode, 'children')) {
            $children = $menuNode['children'];
            $menuNode['has_child'] = true;

            unset($menuNode['children']);
        } else {
            $children = [];
            $menuNode['has_child'] = false;
        }

        $createdNode = MenuNode::query()->create($menuNode);

        if ($children) {
            foreach ($children as $child) {
                $this->createMenuNode($index, $child, $menuId, $createdNode->id);
            }
        }
    }
}
