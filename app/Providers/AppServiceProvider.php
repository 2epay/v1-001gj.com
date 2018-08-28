<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
// use Illuminate\Support\Facades\DB;
use App\Models\SystemConfig;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('web/AppXzs',function($view)
        {
            // $company_info = DB::table('system_config')->first();
            $company_info = SystemConfig::first();
            
            $view->with('company_info',$company_info);
        });

        /*view()->composer('web/AppXz',function($view)
        {
            $company_info = SystemConfig::first();
            
            $view->with('company_info',$company_info);
        });*/
        view()->composer('web/login',function($view)
        {
            $_SystemConfig = SystemConfig::first();
            
            $view->with('_SystemConfig',$_SystemConfig);
        });

        view()->composer('member/payment',function($view)
        {
            $_SystemConfig = SystemConfig::first();
            
            $view->with('_SystemConfig',$_SystemConfig);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        if ($this->app->environment() !== 'production') {
        $this->app->register(\Way\Generators\GeneratorsServiceProvider::class);
        $this->app->register(\Xethron\MigrationsGenerator\MigrationsGeneratorServiceProvider::class);
    }
    }
}
