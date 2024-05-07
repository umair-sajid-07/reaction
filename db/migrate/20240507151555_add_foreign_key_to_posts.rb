# frozen_string_literal: true

class AddForeignKeyToPosts < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :posts, :users
  end
end
