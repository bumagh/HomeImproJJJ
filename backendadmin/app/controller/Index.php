<?php

namespace app\controller;

use app\BaseController;
use app\model\Test;

class Index extends BaseController
{
    public function index()
    {
        $data = Test::where('id','=',1)->select();
        return $data;
    }

    public function hello($name = 'ThinkPHP8')
    {
        return 'hello,' . $name;
    }
}
