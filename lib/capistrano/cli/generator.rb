require 'thor'

module Capistrano
  
  module Cli
   
    class Generator < Thor
   
      include Thor::Actions
   
      default_task :generate
      
      class_option :tiny, :type => :boolean, :required => false, :default => nil, :desc => 'If present will generate a `tiny` deployment script, assuming the bare minimum to get by'
      
      desc "generate", "Generate a deploy recipe into your application"
      def generate
        
      end
      
    end
    
  end
  
end