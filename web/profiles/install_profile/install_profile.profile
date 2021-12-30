<?php // phpcs:ignore Drupal.Commenting.FileComment.Missing

declare(strict_types=1);

/**
 * @file
 * Profile containing customizations.
 */


/**
 * @return array<string, array>
 */
function install_profile_install_tasks(&$install_state): array {
  $tasks = [];
  $tasks['install_profile_finish_installation'] = [
    'display_name' => t('Install default content'),
  ];
  return $tasks;
}

/**
 * Finish installation process.
 *
 * @param array $install_state
 *   The install state.
 *
 * @throws \Drupal\Core\Entity\EntityStorageException
 */
function install_profile_finish_installation(array &$install_state): void {

}
