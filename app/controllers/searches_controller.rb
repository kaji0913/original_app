class SearchesController < ApplicationController
  before_action :authenticate_user!
  before_action :search_post, only: [:index, :search]

  def index
  end

  def search
    @results = @p.result

    genre_id = params[:q][:genre_id_eq]
    @genre = Genre.find_by(id: genre_id)
    
    degree_id = params[:q][:degree_of_difficult_id_eq]
    @degree = DegreeOfDifficult.find_by(id: degree_id)
  end

  private

  def search_post
    @p = Post.ransack(params[:q])
  end

end
