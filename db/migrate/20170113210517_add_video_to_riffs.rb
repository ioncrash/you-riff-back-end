class AddVideoToRiffs < ActiveRecord::Migration
  def change
    add_reference :riffs, :video, index: true, foreign_key: true
  end
end
