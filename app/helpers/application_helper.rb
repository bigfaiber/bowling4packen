module ApplicationHelper
  def user_permition!                               #Evita que se pueda a acceder a vistas de usuarios ajenos.
    if current_user.id != params[:id].to_i
      redirect_to user_path(current_user.id.to_i)
    end
  end
end
