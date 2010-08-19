module Capistrano
  
  module Actions
    
    module On

      def on(hosts, options = {}, &block)
        raise(ArgumentError, "Must be enumerable") unless hosts.respond_to?(:each)
        raise(ArgumentError, "Options must be a has") unless options.kind_of?(Hash)
        raise(ArgumentError, "Expects a block") unless block_given?

      end

      def default_options_for_on
        {
          :in => :sequence, # Sequentially access the servers, no forking (nice for restarts/etc)
          :wait => 1        # Time (in seconds) to wait between servers
        }
      end

    end
     
  end
  
end