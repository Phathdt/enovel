# frozen_string_literal: true

module Account
  class User < ApplicationRecord
    self.table_name = 'users'
  end
end
