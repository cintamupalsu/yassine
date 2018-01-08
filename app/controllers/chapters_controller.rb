class ChaptersController < ApplicationController
  before_action :logged_in_user, only: [:index]
  
  def index
    @chapters = Chapter.paginate(page: params[:page])
  end
  
  def show
    @chapter = Chapter.find(params[:id])
    @verses = @chapter.verses.paginate(page: params[:page])
    @user = current_user
  end
end
