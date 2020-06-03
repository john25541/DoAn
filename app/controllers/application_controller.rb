class ApplicationController < ActionController::Base
  before_action :load_header
  protect_from_forgery with: :exception

  private
  # ----Method load category by gender
  def load_header
    @danhmuc = Danhmuc.includes(:loaisanphams)
  end

end
