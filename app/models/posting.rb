# == Schema Information
#
# Table name: postings
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  title           :string
#  posting_content :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Posting < ActiveRecord::Base
<<<<<<< HEAD
    
    belongs_to :user
    has_many :comments
    
    validates :title, presence: true
    validates :posting_content, presence: true
=======
    belongs_to :user
    has_many :comments
    validates :title, presence: true, length: {minimum:3}
    validates :posting_content, presence: true
    
>>>>>>> d25d03c257b062a5f9cf09171abb27362d0084a8
end
