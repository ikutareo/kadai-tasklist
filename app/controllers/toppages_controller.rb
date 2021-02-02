class ToppagesController < ApplicationController
  def index
    if logged_in?
      @task = current_user.microposts.build  # form_with 用
      @tasks = current_user.microposts.order(id: :desc).page(params[:page])
    end
  end
end
