module FlashHelper
  def conditional_flash_classes_for(type)
    lookup = {
      'success': 'text-green bg-light-green',
      'notice': 'text-blue bg-light-blue',
      'error': 'text-red bg-light-red',
      'alert': 'text-yellow bg-light-yellow'
    }
    classes = lookup[type.to_sym]
    classes += ' fixed right-4 bottom-4' if %w[notice alert].include?(type)
    classes
  end
end
