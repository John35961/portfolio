module FlashHelper
  def conditional_flash_classes_for(type)
    lookup = {
      'success': 'text-emerald-500 bg-emerald-50',
      'notice': 'text-blue bg-light-blue',
      'error': 'text-red-500 bg-red-50',
      'alert': 'text-yellow-500 bg-yellow-50'
    }
    classes = lookup[type.to_sym]
    classes += ' fixed right-4 bottom-4' if %w[notice alert].include?(type)
    classes
  end
end
