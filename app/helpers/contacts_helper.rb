module ContactsHelper
  def conditional_form_classes_for(args = {})
    lookup = {
      'light': {
        'label': 'text-primary-900',
        'input': 'text-primary-900 placeholder:text-primary-900/25 bg-white border-transparent focus:border-primary-300/25',
        'button': 'text-primary-900',
        'notice': 'text-primary-900 opacity-50'
      },
      'dark': {
        'label': 'text-light-blue',
        'input': 'text-light-blue placeholder:text-primary-300/25 bg-primary-800 border-transparent focus:border-primary-300/25',
        'button': 'text-light-blue',
        'notice': 'text-light-blue opacity-50'
      }
    }
    lookup[args[:mode].to_sym][args[:type].to_sym]
  end 
end
