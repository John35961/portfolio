module ProjectsHelper
  def define_banner(object)
    object.banner.attached? ? object.banner.url.gsub('http://', 'https://') : object.banner_remote_url
  end
end
