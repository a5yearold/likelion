class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.integer :user_id
      t.string :title
      t.text :posting_content
      t.timestamps null: false
    end
  end
end
