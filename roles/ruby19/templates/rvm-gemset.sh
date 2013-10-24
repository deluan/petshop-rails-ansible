#!/bin/bash --login
rvm use ruby-{{ruby_version}}
rvm alias create default ruby-{{ruby_version}}
rvm rubygems current
rvm use ruby-{{ruby_version}} --default