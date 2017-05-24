class HellTriangle

    def initialize(input)
      @input = input   
    end

    def resolve
      validate


    end
    
    private

    attr_reader :input

    def validate
      begin
        check_type

      rescue Exception => msg
        print msg 
      end
    end
    
    def check_type
      return if input.class == Array

      raise ArgumentError.new "input must be an Array"
    end

end
