class SearchController < ApplicationController
  def index
   @query = Post.ransack(params[:q])
   @posts = @query.result(distinct: true)
   (request['q'] && current_user) && create
  end

  def create 
    data = { title: request.params['q']['title_or_body_or_user_email_i_cont_any'], user_id: current_user.id}
    @new_search = Search.new(data)

    @new_search.save
  end

  def show 
    @searchs = Search.includes(:user).all.order(title: :asc)
  end
end
