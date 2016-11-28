<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 11/28/2016
 * Time: 4:54 PM
 */

return [
    'class' => 'yii\authclient\Collection',
    'clients' => [
        'facebook' => [
            'class' => 'yii\authclient\clients\Facebook',
            'authUrl' => 'https://www.facebook.com/dialog/oauth?display=popup',
            'clientId' => '1789588324654575',
            'clientSecret' => 'ababaa956d050715bba974c068a27206',
            'attributeNames' => ['name', 'email', 'first_name', 'last_name'],
        ],
        'google' => [
            'class' => 'yii\authclient\clients\Google',
            'clientId' => '381959696099-97vdona6f7lqm5gmi80ldjnlb4im4cku.apps.googleusercontent.com',
            'clientSecret' => '6pWTmWc9bO4dMa7MyIVGyV6U',
        ],
    ],
];