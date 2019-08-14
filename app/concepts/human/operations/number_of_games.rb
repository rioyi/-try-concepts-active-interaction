module Human
  module Operations
    class NumberOfGames < ActiveInteraction::Base
      array :games

      def execute
        games.size
      end
    end
  end
end