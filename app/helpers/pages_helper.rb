module PagesHelper
  def justify_content(direction)
    justify = {
      left: 'justify-start',
      center: 'justify-center',
      right: 'justify-end'
    }
    justify[direction.to_sym]
  end
end
