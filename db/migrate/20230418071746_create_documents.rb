class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :document_title,          null: false
      t.text :image
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
