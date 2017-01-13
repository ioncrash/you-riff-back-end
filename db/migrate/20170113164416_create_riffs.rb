class CreateRiffs < ActiveRecord::Migration
  def change
    create_table :riffs do |t|
      t.references :user, index: true, foreign_key: true
      t.string :ytid
      t.text :text
      t.integer :stamp
      t.boolean :flagged

      t.timestamps null: false
    end
  end
end
