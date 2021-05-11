# frozen_string_literal: true

module Account
  class UserQuery
    attr_accessor :query

    def initialize
      @query = Account::User
    end

    def active
      @query = query.active
    end

    def by_point(point)
      @query = query.where("point >= #{point}")
    end
  end
end
