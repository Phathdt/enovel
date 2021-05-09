# frozen_string_literal: true

class UsersController < ApplicationController
  # POST /users
  def create
    form = Account::SignUpForm.new(user_params)

    if form.save
      render(json: SimpleResponse.call(200, 'ok'))
    else
      render(json: SimpleError.call(400, form.errors))
    end
  end

  # GET /users
  def index
    users = Account::User.all

    render(json: users)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
