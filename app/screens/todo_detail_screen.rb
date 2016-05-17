class TodoDetailScreen < PM::Screen
  title "Todo"
  stylesheet TodoDetailScreenStylesheet

  attr_accessor :todo

  def on_load
    set_nav_bar_button :right, title: "Edit", action: :edit_todo
    append(UILabel, :title).data("Title: #{todo.title}")
    append(UILabel, :due_date).data("Due Date: #{todo.due_date}")
    append(UILabel, :completed).data("Completed: #{todo.completed?}")
  end

  def edit_todo
    open EditTodoScreen.new(todo: todo)
  end

  # def table_data
  #   [{
  #     cells: [
  #       {
  #         title: "Title: #{todo.title}"
  #       },
  #       {
  #         title: "Due Date: #{todo.due_date}"
  #       },
  #       {
  #         title: "Completed: #{todo.completed}"
  #       },
  #     ]
  #   }]
  # end

  # You don't have to reapply styles to all UIViews, if you want to optimize, another way to do it
  # is tag the views you need to restyle in your stylesheet, then only reapply the tagged views, like so:
  #   def logo(st)
  #     st.frame = {t: 10, w: 200, h: 96}
  #     st.centered = :horizontal
  #     st.image = image.resource('logo')
  #     st.tag(:reapply_style)
  #   end
  #
  # Then in will_animate_rotate
  #   find(:reapply_style).reapply_styles#

  # Remove the following if you're only using portrait
  def will_animate_rotate(orientation, duration)
    reapply_styles
  end
end
