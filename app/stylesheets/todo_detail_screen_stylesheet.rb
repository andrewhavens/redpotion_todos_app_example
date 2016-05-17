class TodoDetailScreenStylesheet < ApplicationStylesheet
  # Add your view stylesheets here. You can then override styles if needed,
  # example: include FooStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.white
  end

  def title(st)
    nav_bar_height = 64 # FIXME: first element is below the nav bar!
    st.frame = { t: nav_bar_height, w: :full, h: 44, padding: 10 }
  end

  def due_date(st)
    st.frame = { bp: 0, w: :full, h: 44, padding: 10 }
  end

  def completed(st)
    st.frame = { bp: 0, w: :full, h: 44, padding: 10 }
  end
end
