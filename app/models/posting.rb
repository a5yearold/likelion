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
    
    belongs_to :user
    has_many :comments
    
    validates :title, presence: true
    validates :posting_content, presence: true
end
