class ApplicationController < ActionController::Base
  include ApplicationHelper

  protect_from_forgery with: :exception
  before_action :load_header

  private
  # ----Method load category
  def load_header
    @category = Danhmuc.includes(:loaisanphams)
    @brand = Thuonghieu.includes(:sanphams)
  end

end
