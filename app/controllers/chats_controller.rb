class ChatsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chat, only: %i[show]
  before_action :set_chats_collection, only: %i[index show create]
  respond_to :html

  def index
    @chat = Chat.includes(:messages).find_or_create_by(user: current_user)
  end

  def show
    render :index
  end

  def create
    @chat = Chat.create(user: current_user)
    render :index
  end

  private

  def set_chat
    @chat = Chat.find(params[:id])
  end

  def set_chats_collection
    @chats = Chat.all
  end
end
