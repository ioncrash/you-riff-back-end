class RemoveYtidFromRiffs < ActiveRecord::Migration
  def change
    remove_column :riffs, :ytid, :string
  end
end
