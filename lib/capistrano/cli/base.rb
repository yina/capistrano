require 'thor'

module Capistrano
  
  module Cli
    
    class Base < Thor
     
      default_task :deploy
     
      class_option :stage, :type => :string, :alias => '-s', :required => false, :default => nil, :desc => 'The deployment stage to use (Default is nil, which defers to ::Capistrano::Configuration.default_stage)'
      class_option :deploy_file, :type => :string, :alias => '-c', :required => false, :default => nil, :desc => 'The deployment file to use, defaults to looking for ./config/deploy.rb'
      
      desc "deploy", "Deploy the application"
      def deploy
        
      end
      
    end
    
  end
  
end