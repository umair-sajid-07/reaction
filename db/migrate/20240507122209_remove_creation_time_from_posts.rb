# frozen_string_literal: true

class RemoveCreationTimeFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :creation_time
  end
end
