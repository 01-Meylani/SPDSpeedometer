<?php

namespace App\Providers;

// use Illuminate\Support\Facades\Gate;

use App\Models\User;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The model to policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        //
    ];

    /**
     * Register any authentication / authorization services.
     */
    public function boot()
    {
        $this->registerPolicies();

        // Admin bisa akses semuanya
        Gate::define('admin', function (User $user) {
            return $user->isAdmin();
        });

        // Staff hanya bisa akses staff panel
        Gate::define('staff', function (User $user) {
            return $user->isStaff();
        });
    }
}
