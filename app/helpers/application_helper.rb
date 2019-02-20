module ApplicationHelper
  def current_gymsite
    Gymsite.first
  end

  def gymsite
    current_gymsite
  end
end
