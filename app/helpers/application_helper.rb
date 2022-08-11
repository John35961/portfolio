module ApplicationHelper
  def current_pages?(args = {})
    args[:controllers].include?(params[:controller]) && args[:actions].include?(params[:action])
  end

  def pluralize_with_number(args = {})
    "#{args[:count]} #{args[:object].pluralize(args[:count])}"
  end
end
