#!/bin/bash

bin/start --no-dev
bin/copytocontainer --all
bin/composer install
bin/magento setup:upgrade
bin/magento deploy:mode:set production
bin/magento indexer:reindex
bin/magento maintenance:disable