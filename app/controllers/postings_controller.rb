class PostingsController < ApplicationController
    
    before_action :authenticate_user!, except: [:index]
    
    def index
        @all_postings = Posting.all 
        @all_comments = Comment.all
    end
    
    def create
        posting = Posting.new
        posting.user_id = current_user.id
        posting.title = params[:title]
        posting.posting_content = params[:content]
        
        if posting.save
            redirect_to '/index'
        else   
            flash[:error] ="Error : title and content cannot be blank."
            redirect_to '/index'
        end
    end
    
    def destroy
        posting = Posting.find(params[:id_of_posting])
        posting.destroy
        redirect_to '/index'
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
