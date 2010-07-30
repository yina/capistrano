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

  class Configuration

    attr_accessor :deploy_as
    attr_accessor :scm
    attr_accessor :stages
    attr_accessor :default_stage
    attr_accessor :environment_variable
    attr_accessor :environment
    
    attr_accessor :color

    def initialize
      @deploy_as            = Etc.getlogin
      @scm                  = ::Capistrano::Scm::Git
      @stages               = Set.new(%w(production staging))
      @default_stage        = 'production'
      @environment_variable = 'RACK_ENV'
      @environment          = lambda do
                                { 
                                  @environment_variable => 'production',
                                  'PATH'                => '/usr/bin:/bin:/usr/sbin'
                                }
                              end
      @color                = true
    end

    def environment
      @environment.respond_to?(:call) ? @environment.call : @environment
    end

  end

end