# frozen_string_literal: true

class AddActiveToUser < ActiveRecord::Migration[6.1]
  def change
    add_column(:users, :active, :boolean, default: true)
    add_index(:users, :active)
  end
end
