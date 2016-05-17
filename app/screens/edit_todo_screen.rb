class EditTodoScreen < PM::XLFormScreen
  title "Edit Todo"
  stylesheet TodoFormScreenStylesheet

  attr_accessor :todo

  form_options required:  :asterisks, # add an asterisk to required fields
               on_save:   :'save_form:', # will be called when you touch save
               on_cancel: :cancel_form, # will be called when you touch cancel
               auto_focus: true # the form will focus on the first focusable field

  def form_data
    [{
      cells: [
        {
          title: "Title",
          name: :title,
          type: :text,
          value: todo.title
        },
        {
          title: "Due Date",
          name: :due_date,
          type: :datetime,
          value: todo.due_date
        },
        {
          title: "Completed",
          name: :completed,
          type: :check,
          value: todo.completed
        }
      ]
    }]
  end

  def save_form(values)
    dismiss_keyboard
    todo.update(values)
    app.data.save
    close
    # TODO: figure out how/when to refresh the table screen data
  end

  def cancel_form
    close
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
