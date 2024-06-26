# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :status
      t.datetime :creation_time
      t.integer :user_id

      t.timestamps
    end
  end
end
