# frozen_string_literal: true

module Account
  class SignUpForm
    include ActiveModel::Model

    attr_accessor :user, :email, :password

    EMAIL_REGEX = /[^@]+@[^.]+\..+/.freeze

    delegate :attributes=, to: :user, prefix: true

    validates :email, presence: true, format: { with: EMAIL_REGEX, message: 'format is not valid' }
    validates :password, presence: true, length: { in: 6..20 }
    validate :email_is_exists?

    def initialize(params)
      super(params)

      @email = email.downcase

      @user = Account::User.new(email: email, password: password)
    end

    def save
      return false if invalid?

      persist!

      true
    end

    private

    def email_is_exists?
      errors.add(:user, 'email exited') if Account::User.exists?(email: email)
    end

    def persist!
      @account = Account::User.create!(email: email, password: password)
    end
  end
end
