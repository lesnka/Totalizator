class ApplicationController < ActionController::Base
  protect_from_forgery
  private
  def current_bit
    Bit.find(session[:bit_id])
  rescue ActiveRecord::RecordNotFound
    bit=Bit.create
    session[:bit_id] = bit.id
    bit
  end

end
