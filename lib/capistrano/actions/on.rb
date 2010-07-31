module Capistrano
  
  module Actions
    
    module On

      def on(hosts, options = {}, &block)
        raise(ArgumentError, "Must be enumerable") unless hosts.respond_to?(:each)
        raise(ArgumentError, "Options must be a has") unless options.kind_of?(Hash)
        raise(ArgumentError, "Expects a block") unless block_given?
        # options = {:in => :sequence}.merge(options)
      end

    end
     
  end
  
end