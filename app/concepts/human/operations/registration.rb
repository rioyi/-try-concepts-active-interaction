module Human
  module Operations
    class Registration < ActiveInteraction::Base
      string :email
      string :password, default: nil
      boolean :send_welcome_email, default: true

      validate :ensure_password

      validates :password, :email, presence: true

      def execute
        user = User.create!(inputs.slice(:email, :password))

        if send_welcome_email
          # Notifications.welcome(user).deliver
          'envia un email'
        end
        user
      end

      private

      def ensure_password
        unless password?
          self.password = SecureRandom.hex
        end
      end
    end
  end
end