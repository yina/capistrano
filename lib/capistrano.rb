require "rubygems"
require "bundler"
Bundler.setup(:runtime)

# Require action classes
require 'capistrano/actions/in'
require 'capistrano/actions/on'
require 'capistrano/actions/rake'
require 'capistrano/actions/run'
require 'capistrano/actions/when'

# Lazy attribute accessor helper
require 'capistrano/helpers/path_for_executable'
require 'capistrano/helpers/lazy_attr_accessor'

# Logging class
require 'capistrano/helpers/logger'

# Source control modules
require 'capistrano/scm/git'

# Finally the config class
require 'capistrano/configuration/configuration'
