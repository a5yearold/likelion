class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
<<<<<<< HEAD
=======
      
>>>>>>> d25d03c257b062a5f9cf09171abb27362d0084a8
      t.integer :user_id
      t.string :title
      t.text :posting_content
      t.timestamps null: false
    end
  end
end
