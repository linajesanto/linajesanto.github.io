<?php

/**
 * Load services definition file.
 */
$settings['container_yamls'][] = __DIR__ . '/services.yml';


/**
 * If there is a local settings file, then include it
 */
$local_settings = __DIR__ . "/settings.local.php";
if (file_exists($local_settings)) {
  include $local_settings;
}

// Automatically generated include for settings managed by ddev.
$ddev_settings = dirname(__FILE__) . '/settings.ddev.php';
if (is_readable($ddev_settings) && getenv('IS_DDEV_PROJECT') == 'true') {
  require $ddev_settings;
}

$databases['default']['default'] = array (
  'database' => 'sites/default/files/.ht.sqlite',
  'prefix' => '',
  'namespace' => 'Drupal\\Core\\Database\\Driver\\sqlite',
  'driver' => 'sqlite',
);

$settings['tome_files_directory'] = '../files';
$settings['tome_content_directory'] = '../content';
$settings['tome_static_directory'] = '../docs';
$settings['config_sync_directory'] = '../config';
