module ProjectsHelper
  def banner_for(object)
    object.banner.attached? ? to_https(object.banner.url) : object.banner_remote_url
  end
end
