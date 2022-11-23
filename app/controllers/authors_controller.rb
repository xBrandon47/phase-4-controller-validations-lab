class AuthorsController < ApplicationController
  
  def show
    author = Author.find(params[:id])

    render json: author
  end

  def create
    author = Author.create!(author_params)
    # to rise an expection if is not vaild then it will rise a expection 

    render json: author, status: :created
    #we're assigning 
  rescue ActiveRecord::RecordInvalid => invalid 
    render json: {errors: invalid.record.errors}, status: :unprocessable_entity
  end

  private
  
  def author_params
    params.permit(:email, :name)
  end
  
end
