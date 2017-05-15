class PostingsController < ApplicationController
    
<<<<<<< HEAD
    before_action :authenticate_user!, except: [:index]
    
=======
    #authenticate user when trying to do anything except view postings (index method)
    before_action :authenticate_user!, except: [:index]
    
    
>>>>>>> d25d03c257b062a5f9cf09171abb27362d0084a8
    def index
        @all_postings = Posting.paginate(:page => params[:page], :per_page => 3).order('id DESC')
        @all_comments = Comment.all
    end
    
    def create
        posting = Posting.new
        posting.user_id = current_user.id
        posting.title = params[:title]
        posting.posting_content = params[:content]
        
        if posting.save
            redirect_to '/index'
<<<<<<< HEAD
        else   
            flash[:error] ="Error : title and content cannot be blank."
            redirect_to '/index'
        end
=======
        else
            flash[:error] = "Oops! Title and Content cannot be blank!"
            redirect_to '/index'
        end
        
>>>>>>> d25d03c257b062a5f9cf09171abb27362d0084a8
    end
    
    def destroy
        posting = Posting.find(params[:id_of_posting])
        posting.destroy
        redirect_to '/index'
    
    end
    
    def update
       @posting = Posting.find(params[:id_of_posting])
       
    end
    
    def recreate
       posting = Posting.find(params[:id_of_posting])
       posting.title = params[:title]
       posting.posting_content = params[:content]
    
     if posting.save
            redirect_to '/index'
        else
            flash[:error] = "Oops! Title and Content cannot be blank!"
            redirect_to '/index'
        end
    
    end
    
    def edit
        @posting = Posting.find(params[:id_of_posting])
    end
    
    def update
        posting = Posting.find(params[:id_of_posting])
        posting.title = params[:title]
        posting.posting_content = params[:content]
        
        if posting.save
            redirect_to '/index'
        else   
            flash[:error] ="Update error : title and content cannot be blank."
            redirect_to '/index'
        end
    end
end
