class BookCommentsController < ApplicationController
  
  def create
    @book = Book.find(params[:book_id])
    @comment = BookComment.new(book_comment_params)
    @comment.user_id = current_user.id
    @comment.book_id = @book.id
    unless @comment.save
      render 'error'
    end
  end
  
  def destroy
    @book = Book.find(params[:book_id])
    BookComment.find(params[:id]).destroy
    redirect_to book_path(params[:book_id])
  end
    
  
  private
  
  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
    
end
