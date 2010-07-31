module Capistrano
  
  module Scm
    
    class Git
      
      attr_accessor :git_binary
      
      def clean_working_copy!
        "#{git_binary}"
      end
        
      def reset_working_copy!
        
      end
      
      private
      
        def git_binary
          @git_binary ||= '$(which git)'
        end
      
    end
    
  end
  
end