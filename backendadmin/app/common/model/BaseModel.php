<?php

namespace app\common\model;

use think\Model;

/**
 * 模型基类
 */
class BaseModel extends Model
{
    public static $app_id;

    public static $base_url;

    protected $alias = '';

    protected $error = '';
    /**
     * 模型基类初始化
     */
    public static function init()
    {
        parent::init();
        // 获取当前域名
        self::$base_url = base_url();
    }
}
