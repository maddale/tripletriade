class UsersController < ApplicationController
 layout 'top_layout'
 before_action :user_find 
  
  def edit
  end

  def update

  	if @user.update_attributes(user_params)
  		flash[:success] = "Профиль успешно обновлён."
  		redirect_to user_path(current_user)
  	else
  		render 'edit'
  	end
  end

  def show
  end



private
	
	def user_find
		@user = User.find(params[:id])		
	end

	def user_params
		params.require(:user).permit(:name, :nickname, :age, :email, :sex)
	end

end
