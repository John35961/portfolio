module HeaderHelper
  def active_tab?(args = {})
    current_pages?(controllers: args[:controllers], actions: args[:actions]) ? true : false
  end

  def conditional_tab_classes(args = {})
    classes = 'py-2 px-3 h-full mx-0 md:mx-5 lg:mx-8 rounded-lg hover:bg-blue-50 hover:text-slate-800 transition-all text-sm'
    classes += if current_pages?(controllers: args[:controllers], actions: args[:actions])
                 ' rounded-lg bg-blue-50 text-slate-800 opacity-100'
               else
                 ' text-gray-400'
               end
    classes
  end
end
