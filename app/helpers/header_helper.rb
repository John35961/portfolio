module HeaderHelper
  def active_tab?(args = {})
    current_pages?(controllers: args[:controllers], actions: args[:actions]) ? true : false
  end

  def conditional_tab_classes_for(args = {})
    classes = 'py-2 px-3 h-full mx-0 md:mx-5 lg:mx-8 rounded-lg hover:bg-light-blue hover:text-primary transition-all text-sm'
    classes += if current_pages?(controllers: args[:controllers], actions: args[:actions])
                 ' rounded-lg bg-light-blue text-primary opacity-100'
               else
                 ' text-gray'
               end
    classes
  end
end
