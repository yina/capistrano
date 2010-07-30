require 'set'

module Capistrano

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= ::Capistrano::Configuration.new
    yield(configuration)
  end

  class Configuration

    attr_accessor :scm
    attr_accessor :stages
    attr_accessor :default_stage
    attr_accessor :environment
    attr_accessor :environment_variable

    def initialize
      @scm                  = ::Capistrano::Scm::Git
      @stages               = Set.new(%w(production staging))
      @default_stage        = 'production'
      @environment_variable = 'RACK_ENV'
      @environment          = { @environment_variable => 'production' }
    end

  end

end