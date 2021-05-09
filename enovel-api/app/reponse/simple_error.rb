# frozen_string_literal: true

module SimpleError
  module_function

  def call(status, error)
    {
      status: status,
      msg: error.full_messages.to_sentence,
    }
  end
end
