class VisitsController < ApplicationController
  
  def sign_in
    
  end
  
  
  def form_login
    @username = params[:username]
    @password = params[:password]
    
    @login_result = User.find(:first, :conditions => "username = '#{@username}' and password = '#{@password}'")
    
    if @login_result.nil?

      @theLogin = "failed"
      flash[:notice] = "Login failed.  Try again."
      redirect_to("/visits/sign_in")
        
    else
      cookies[:username] = @username
      cookies[:user_id] = @login_result.id
      
      
      redirect_to("/articles")
    end    
  end
  
  def sign_out
    cookies.delete :username
    cookies.delete :user_id    
    redirect_to("/welcome")
  end
end
