class MessageController < ApplicationController
  before_action :set_group
  def index
    @message = Message.new
    @messages = @group.messages.includes(:user)
  end

  def create
    @message = @group.messages.new(message_params)
    if @message.save
      redirect_to group_messages_path(@group), flash: 'メッセージが送信されました'
    else
      set_messages
      flash.now[:alert] = 'メッセージを入力してください'
      render :index
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:group_id])
    @groups = current_user.groups
  end

  def set_messages
    @messages = @group.messages.includes(:user)
  end
end
