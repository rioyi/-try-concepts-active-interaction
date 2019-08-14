module Math
  module Operations
    class Square < ActiveInteraction::Base
      float :num

      def execute
        num**2
      end
    end
  end
end