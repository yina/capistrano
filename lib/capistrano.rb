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
    
    def initialize
      @scm           = ::Capistrano::Scm::Git
      @stages        = Set.new(%w(production staging))
      @default_stage = 'production'
    end

    
        
  end
  
  
end