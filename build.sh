#!/bin/bash

bin/start --no-dev
bin/copytocontainer --all
bin/clinotty composer install
bin/clinotty bin/magento setup:upgrade
bin/clinotty bin/magento deploy:mode:set production
bin/clinotty bin/magento indexer:reindex
bin/clinotty bin/magento maintenance:disable