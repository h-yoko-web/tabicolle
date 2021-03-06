# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :check_guest, only: :destroy

  def check_guest
    redirect_to root_path, alert: 'ゲストユーザーは削除できません。' if resource.email == 'guest@example.com'
  end

  def destroy
    @user = User.find(params[:format])
    @user.destroy
    redirect_to root_url, notice: 'アカウントを削除しました｡ またのご利用お待ちしています｡' if @user.destroy
  end
end
