class UsersController < ApplicationController

  def index
    render 'users/index', layout: false
  end

  def show
    if logged_in? && current_user.id == params[:id].to_i
      @user = User.find(params[:id])
    else
      redirect_to "/"
    end
  end

  def edit
    if request.xhr?
      render 'users/_edit', layout: false
    end
  end

  def update
    if request.xhr?
      user = User.find_by(:id => session[:user_id])
      user.update_attributes(:nick_name => params[:name])
      respond_to do |format|
        format.json { render layout: false, json: {:name => user.nick_name }}
      end
    end
  end

end
