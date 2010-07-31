require 'set'
require 'etc'

module Capistrano

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= ::Capistrano::Configuration.new
    yield(configuration)
  end

  module Actions
    
    class << self 
      attr_accessor :configuration
    end
    
    def self.configure
      self.configuration ||= ::Capistrano::Actions::Configuration.new
    end
    
    class Configuration
      
      attr_accessor :before_run
      attr_accessor :after_run
      
      def initialize
        @before_run = nil
        @after_run  = nil
      end
      
    end
    
  end

  class Configuration

    #
    # These are lazy_evaluated, please
    # see the documentation inline
    #
    lattr_accessor :deploy_as
    lattr_accessor :scm
    lattr_accessor :stages
    lattr_accessor :default_stage
    lattr_accessor :environment_variable
    lattr_accessor :environment
    lattr_accessor :shell
    lattr_accessor :target_directory
    lattr_accessor :application_name
    lattr_accessor :repository
    
    # This doesn't need to be lazy-evaluated, 
    # as Highline takes care of that when using
    # a function that might require color.
    attr_accessor :color
    attr_accessor :executables

    def initialize
      @application_name     = 'example.com'
      @target_directory     = lambda { "\"/u/apps/#{application_name}/\"" } 
      @deploy_as            = Etc.getlogin
      @scm                  = nil
      @repository           = lambda { "git://github.com/#{deploy_as}/#{application_name}.git" }
      @stages               = Set.new(['production', 'staging'])
      @default_stage        = 'production'
      @environment_variable = 'RACK_ENV'
      @environment          = lambda do
                                { 
                                  environment_variable => 'production',
                                  'PATH'               => '/usr/bin:/bin:/usr/sbin'
                                }
                              end
      @color                = true
      @executables          = Hash.new
      @shell                = '/bin/sh'
    end

  end

end