class CheesesController < ApplicationController
  def index
    render template: 'cheese/index.html.erb', locals: { cheese: Cheese.all }
  end

  def show
    if Cheese.exists?(params[:id])
      render template: 'cheese/show.html.erb', locals: { cheese: cheese.find(params[:id])}
    else
      render html: "Entity Not Found.", status: 404
    end
  end

  def new
    render locals: {
      cheese: Cheese.new
    }
  end

  def edit
  end

  def create
    cheese = Cheese.new
    cheese.name = params[:cheese][:name]

    if cheese.saved
      redirect_to action: "index"
    else
      flash[:alert] = "Cheese could not be saved"
      render template: 'cheese/index.html.erb', locals: {
        cheese: cheese
      }
    end
  end

  def update
    cheese = Cheese.find(params[:id])
    cheese.name = params[:cheese][:name] if params[:cheese][:name].present?
    if cheese.saved
      redirect_to user_path(path)
    else
      render template: '/cheese/new.html.erb', locals: {
        cheese: cheese
      }
    end
  end

  def destroy
  end
end
