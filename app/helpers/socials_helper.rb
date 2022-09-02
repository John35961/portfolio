module SocialsHelper
  def conditional_minisocials_classes_for(mode)
    lookup = {
      'dark': 'text-light-blue',
      'light': 'text-primary-800'
    }
    lookup[mode.to_sym]
  end
end
