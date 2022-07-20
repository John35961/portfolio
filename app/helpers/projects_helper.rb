module ProjectsHelper
  def current_pages?(args = {})
    params[:controller] == args[:controller] && args[:actions].include?(params[:action])
  end

  def define_banner(object)
    object.banner.attached? ? object.banner.url : object.banner_remote_url
  end
end
