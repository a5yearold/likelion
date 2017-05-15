# likelion
likelion projects
#README
 
# Model
1. Users
    -Relationships
        has_many :postings
        has_many :comments
    -Elements
        email / password
 
2. Postings
    -Relationships
        belongs_to :user (포스팅은 한 유저한테 속해짐)
        has_many :comments (포스팅에는 코멘트가 다수)
    -Elements
	title, body, user_id
 
3. Comments
    -Relationships
        belongs_to :users
        belongs_to :postings
    -Elements
        content, user_id, posting_id (코멘트안에는 유저아이디와 포스팅아이디)
 
------------------------------------------------------------------------
 
# Controllers / Views
 
posting controller
comment controller
user => devise.gemfile (gemfile - 누군가가 이미 만들어놓은 파일)
 
------------------------------------------------------------------------
 
# CSS / JS : Bootstrap CDN
