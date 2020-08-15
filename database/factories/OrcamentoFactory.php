<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Orcamento;
use Faker\Generator as Faker;

$factory->define(Orcamento::class, function (Faker $faker) {
    return [
        'cliente' => $faker->Name(),
        'vendedor' => $faker->Name(),
        'descricao' => $faker->sentence($nbWords = 8, $variableNbWords = true),
        'valor' => $faker->numberBetween($min = 1500, $max = 6000),
        'data' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'hora' => $faker->time($format = 'H:i:s', $max = 'now'),

    ];
});
