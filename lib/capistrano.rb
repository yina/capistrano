require "rubygems"
require "bundler"
Bundler.setup(:runtime)

# Lazy attribute accessor helper
require 'helpers/path_for_executable'
require 'helpers/lazy_attr_accessor'

# Source control modules
require 'scm/git'

# Finally the config class
require 'configuration/configuration'
