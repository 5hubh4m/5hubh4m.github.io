#!/bin/bash
JEKYLL_ENV=production bundle exec jekyll b --safe
rsync -avzhp --exclude .DS_Store --delete _site/ linux.coecis.cornell.edu:/cs/people/sc2937
