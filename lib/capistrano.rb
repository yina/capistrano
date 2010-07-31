require "rubygems"
require "bundler"
Bundler.setup(:runtime)

# Lazy attribute accessor helper
require 'capistrano/helpers/path_for_executable'
require 'capistrano/helpers/lazy_attr_accessor'

# Source control modules
require 'capistrano/scm/git'

# Finally the config class
require 'capistrano/configuration/configuration'
