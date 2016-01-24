#!/usr/bin/env zsh -l
LOGFILE=./build.log
echo "$(date +%Y-%m-%d-%H:%M:%S) -- Serving project with DEVELOPMENT config. Check build.log for build details."
echo "$(date +%Y-%m-%d-%H:%M:%S) -- Serving project with DEVELOPMENT config" >> $LOGFILE 2>&1
bundler install >> LOGFILE 2>&1
bundler exec jekyll serve --config _config.yml,_config_dev.yml >> $LOGFILE 2>&1