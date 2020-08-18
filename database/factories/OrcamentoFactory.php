<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Orcamento;
use Faker\Generator as Faker;

$factory->define(Orcamento::class, function (Faker $faker) {
    return [
        'cliente' => $faker->firstName(),
        'vendedor' => $faker->firstName(),
        'descricao' => $faker->realText($maxNbChars = 100, $indexSize = 2),
        'valor' => $faker->randomFloat($nbMaxDecimals = 2, $min = 300, $max = 16000),
        'data' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'hora' => $faker->time($format = 'H:i:s', $max = 'now'),

    ];
});
