class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_header
  private
  # ----Method load category by gender
  def load_header
    @category = Danhmuc.includes(:loaisanphams)
  end

end
