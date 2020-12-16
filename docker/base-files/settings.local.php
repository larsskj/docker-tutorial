<?php

$settings['hash_salt'] = getenv('DRUPAL_HASH_SALT');

$databases['default']['default'] = array (
  'database' => getenv('DBNAME'),
  'username' => getenv('DBUSER'),
  'password' => getenv('DBPASS'),
  'prefix' => '',
  'host' => getenv('DBHOST'),
  'port' => '3306',
  'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
  'driver' => 'mysql',
);

$settings['trusted_host_patterns'] = [
  '^www\.kilroy-was-here\.dk$',
  '^kilroy-www',
  '^localhost$',
];

$settings['config_sync_directory'] = '../config';
$settings['file_private_path'] = '/var/www/private';

