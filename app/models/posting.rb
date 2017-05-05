class Posting < ActiveRecord::Base
    has_many :comments
    validates :title, presence: true, length: {minimum:3}
    validates :posting_content, presence: true
    
end
