module ProjectsHelper
  def current_pages?(args = {})
    args[:controllers].include?(params[:controller]) && args[:actions].include?(params[:action])
  end

  def define_banner(object)
    object.banner.attached? ? object.banner.url.gsub('http://', 'https://') : object.banner_remote_url
  end
end
