# frozen_string_literal: true

module Account
  class SignUpForm
    include ActiveModel::Model

    attr_accessor :user, :email, :password

    validate :validate_user

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

    def persist!
      Account::User.create!(email: email, password: password)
    end

    def validate_user
      promote_errors(user.errors) if user.invalid?
    end

    def promote_errors(errors)
      errors.each do |error|
        errors.add(error.attribute, error.message)
      end
    end
  end
end
