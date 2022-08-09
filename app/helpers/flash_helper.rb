module FlashHelper
  def conditional_classes(type)
    decorations = {
      'success': 'text-emerald-500 bg-emerald-50',
      'notice': 'text-blue-500 bg-blue-50',
      'error': 'text-red-500 bg-red-50',
      'alert': 'text-yellow-500 bg-yellow-50'
    }
    decoration = decorations[type.to_sym]
    decoration += ' fixed right-4 bottom-4' if %w[notice alert].include?(type)
    decoration
  end
end
