class PostingsController < ApplicationController
    def index
        @all_postings = Posting.all 
        @all_comments = Comment.all
    end
    
    def create
        posting = Posting.new
        posting.title = params[:title]
        posting.posting_content = params[:content]
        
        if posting.save
            redirect_to '/index'
        else
            flash[:error] = "Oops! Title and Content cannot be blank!"
            redirect_to '/index'
        end
        
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
    
end
