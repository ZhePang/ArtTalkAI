class ChatsController < ApplicationController
  before_action :set_chat, only: [:show, :edit, :update, :destroy]
  layout "chat"

  # GET /chats
  def index
    @chats = Chat.none
    if Chat.all.any?
      redirect_to chat_url(Chat.all.last)
    end
  end

  # GET /chats/1
  def show
    if session[:art_info]
      @art_info = session[:art_info]
      # Use @art_info as needed
    end
  end

  def start_chat_from_art
    if session[:art_info]
      if Chat.exists?(title: session[:art_info][:title])
        redirect_to chat_url(Chat.find_by(title: session[:art_info][:title]))
      else
        @chat = Chat.new
        @chat.create_initial_prompt(session[:art_info][:title])
        @chat.save
        redirect_to chat_path(@chat)
      end
    else
      # Handle the case where art info is not available
    end
  end

  # GET /chats/new
  def new
    @chat = Chat.new
  end

  # GET /chats/1/edit
  def edit
  end

  # POST /chats
  def create
    @chat = Chat.new()

    respond_to do |format|
      if @chat.save
        format.html { redirect_to chat_url(@chat), notice: "Chat was successfully created." }
        format.json { render :show, status: :created, location: @chat }
        format.turbo_stream
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chat.errors, status: :unprocessable_entity }
        format.turbo_stream
      end
    end
  end

  # PATCH/PUT /chats/1
  def update
    respond_to do |format|
      if @chat.update(chat_params)
        format.html { redirect_to chat_url(@chat), notice: "Chat was successfully updated." }
        format.json { render :show, status: :ok, location: @chat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chats/1
  def destroy
    @chat.destroy
    
    respond_to do |format|
      format.html { redirect_to chats_url, notice: "Chat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chat
      @chat = Chat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chat_params
      params.require(:chat).permit(:message)
    end
end
