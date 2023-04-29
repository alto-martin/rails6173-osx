#!/bin/sh
rm -rf public/assets/*
rails server -b 0.0.0.0 $@
