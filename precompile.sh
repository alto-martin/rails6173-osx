#!/bin/sh
RAILS_ENV=production rails assets:clobber --trace
RAILS_ENV=production rails assets:precompile --trace
