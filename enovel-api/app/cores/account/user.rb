# frozen_string_literal: true

module Account
  class User < ApplicationRecord
    self.table_name = 'users'

    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  end
end
