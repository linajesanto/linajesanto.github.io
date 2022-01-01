# LinajeSanto website
https://linajesanto.github.io/

Built with:
* Drupal.org
* Drupal TOME


Dependencies:
* Git
* Composer
* php-sqlite3

Build:
```
git clone git@github.com:linajesanto/linajesanto.github.io.git
cd linajesanto.github.io.git
composer install # install dependencies
alias drush="vendor/bin/drush"
drush tome:install -y # install site from git-managed content.
drush runserver 127.0.0.1:8888
drush user:login --uri=127.0.0.1:8888

# Create/update/delete content....

drush tome:export -y # Export Drupal content to files.
drush tome:static # Generate html files.
git add .
git commit -m'Update content'
git push # Publish content from docs foler.
```

https://www.facebook.com/comunidadcristianaleon

https://www.facebook.com/linajesantonic
