class LanguagesController < ApplicationController
  skip_filter :authenticate_user!

  def show
    change_language
  end
  
  def update
    change_language
  end
  
  private

  def change_language
    self.current_language = params[:id]
    redirect_to (referer_path or root_path)
  end

  def referer_path
    request.env["HTTP_REFERER"]
  end

end
