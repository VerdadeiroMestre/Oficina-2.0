<?php

use Illuminate\Database\Seeder;
use App\Orcamento;

class OrcamentoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Orcamento::Class,100)->create();
    }
}
