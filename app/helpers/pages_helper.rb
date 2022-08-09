module PagesHelper
  def justify_content(direction)
    lookup = {
      left: 'justify-start',
      center: 'justify-center',
      right: 'justify-end'
    }
    lookup[direction.to_sym]
  end
end
