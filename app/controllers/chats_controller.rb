class ChatsController < ApplicationController
  respond_to :html, :json

  before_action :authenticate_user!
  before_action :set_chat, only: %i[show]

  def index
    @chats = Chat.all
  end

  def show
    respond_with(@chat)
  end

  def create
    @chat = Chat.create(user: current_user)
    respond_with(@chat)
  end

  private

  def set_chat
    @chat = Chat.find(params[:id])
  end
end
