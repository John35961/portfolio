module AdminHelper
  def pluralize_with_number(args = {})
    "#{args[:count]} #{args[:object].pluralize(args[:count])}"
  end
end
