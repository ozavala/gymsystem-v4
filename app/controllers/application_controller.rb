class ApplicationController < ActionController::Base
  
  def current_gymsite
    Gymsite.first
  end

  def gymsite
    @gymsite ||= current_gymsite
  end
end
