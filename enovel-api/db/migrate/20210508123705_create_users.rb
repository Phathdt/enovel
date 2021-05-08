# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :email, index: { unique: true }
      t.text :password

      t.timestamps
    end
  end
end
