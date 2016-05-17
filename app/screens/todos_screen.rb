class TodosScreen < PM::TableScreen
  title "Todos"
  stylesheet TodosScreenStylesheet

  def on_load
    set_nav_bar_button :right, title: "New", action: :new_todo
  end

  def new_todo
    open NewTodoScreen
  end

  def table_data
    [{
      cells: Todo.all.map do |todo|
        {
          title: todo.title,
          subtitle: ("Due: #{todo.due_date}" if todo.due_date),
          action: :show_todo,
          arguments: { todo: todo },
          editing_style: :delete
        }
      end
    }]
  end

  def show_todo(args)
    open TodoDetailScreen.new(args)
  end

  def on_cell_deleted(cell, index_path)
    cell[:arguments][:todo].destroy
    app.data.save
  end

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
