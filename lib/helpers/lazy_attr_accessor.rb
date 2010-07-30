class Object
  
  class << self
    
    def lattr_accessor(*properties)
      properties.map(&:to_s).each do |property|
        instance_variable_set("@#{property}", nil)
        instance_exec do
          define_method("#{property}") do
            if instance_variable_get("@#{property}").respond_to?(:call)
              instance_variable_get("@#{property}").call
            else
              instance_variable_get("@#{property}")
            end
          end
          define_method("#{property}=") do |value|
            instance_variable_set("@#{property}", value)
          end
        end
      end
    end
          
  end
  
end