# frozen_string_literal: true

module SimpleResponse
  module_function

  def call(status, msg)
    {
      status: status,
      msg: msg,
    }
  end
end
