class ArtsController < ApplicationController
  
  before_action :define_content

  def define_content
    @content = "empty"
    @first_art = Art.first # just for an example...
  end

  def show
    @content = "show"
    id = params[:id] # retrieve art ID from URI route
    @today_date = DateTime.now.strftime("%B %d, %Y")

    if id == "gallery"
      @show_gallery = true
      @arts = Art.all
      @first_art = Art.find(DateTime.now.strftime('%d').to_i % (Art.count) + 1)
      session.delete(:art_info)
    else
      @show_gallery = false
      @art = Art.find(id) # look up art by unique ID
      @first_art = Art.find(id) # look up art by unique ID
      session[:art_info] = { id: @art.id, title: @art.title, author: @art.author }
      # will render app/views/arts/show.<extension> by default
    end
  end

  def index
    # On first render, we enter this index endpoint
    @arts = Art.all
    @first_art = Art.find(DateTime.now.strftime('%d').to_i % (Art.count) + 1)
    @today_date = DateTime.now.strftime("%B %d, %Y")
    @content = "show"
    session.delete(:art_info)
  end
end
