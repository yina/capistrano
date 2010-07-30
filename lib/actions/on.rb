module Capistrano
  
  module Actions

    def on(server_list, options)
  
    end

    private
    
      def default_options_for_on
        {
          :in => :series
        }
      end

    end
  
end