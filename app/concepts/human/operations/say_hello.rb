# Validations
# ActiveInteraction type checks your inputs. Often you'll want more than that. For instance, you may want an input to be a string with at least one non-whitespace character. Instead of writing your own validation for that, you can use validations from ActiveModel.

# These validations aren't provided by ActiveInteraction. They're from ActiveModel. You can also use any custom validations you wrote yourself in your interactions.

module Human
  module Operations
    class SayHello < ActiveInteraction::Base
      string :name

      validates :name,
        presence: true

        def execute
          "Hello, #{name}!"
        end
    end
  end
end