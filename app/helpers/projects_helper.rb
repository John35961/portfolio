module ProjectsHelper
  def current_pages?(args = {})
    params[:controller] == args[:controller] && args[:actions].include?(params[:action])
  end
end
