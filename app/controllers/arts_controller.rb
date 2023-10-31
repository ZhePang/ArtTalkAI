class ArtsController < ApplicationController

  def show
    id = params[:id] # retrieve art ID from URI route
    @art = Art.find(id) # look up art by unique ID
    # will render app/views/arts/show.<extension> by default
  end

  def index
    @arts = Art.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @art = Art.create!(art_params)
    flash[:notice] = "#{@art.title} was successfully created."
    redirect_to arts_path
  end

  def edit
    @art = Art.find params[:id]
  end

  def update
    @art = Art.find params[:id]
    @art.update_attributes!(art_params)
    flash[:notice] = "#{@art.title} was successfully updated."
    redirect_to art_path(@art)
  end

  def destroy
    @art = Art.find(params[:id])
    @art.destroy
    flash[:notice] = "Art '#{@art.title}' deleted."
    redirect_to arts_path
  end

  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def art_params
    params.require(:art).permit(:title, :description, :link, :release_date)
  end
end
