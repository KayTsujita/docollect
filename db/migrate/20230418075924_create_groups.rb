class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string     :group_name,      null: false
      t.references :user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
