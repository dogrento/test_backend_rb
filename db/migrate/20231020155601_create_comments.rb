class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, foreign_key: true
      # t.string :article
      # t.string :references

      t.timestamps
    end
  end
end
