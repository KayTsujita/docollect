class AddGroupIdToDocuments < ActiveRecord::Migration[6.0]
  def change
    add_reference :documents, :group, null: false, foreign_key: true
  end
end
