module FlashHelper
  def conditional_flash_classes_for(type)
    lookup = {
      'success': 'text-green bg-light-green shadow-green/10',
      'notice': 'text-blue bg-light-blue shadow-blue/10',
      'error': 'text-red bg-light-red shadow-red/10',
      'alert': 'text-yellow bg-light-yellow shadow-yellow/10'
    }
    classes = lookup[type.to_sym]
    classes += ' fixed right-4 bottom-4' if %w[notice alert].include?(type)
    classes
  end
end
