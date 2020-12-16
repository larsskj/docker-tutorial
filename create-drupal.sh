#!/bin/bash

cd docker

composer create-project drupal/recommended-project:~8.9.0 www

cd www

composer require drush/drush

cp -a ../base-files/* .

