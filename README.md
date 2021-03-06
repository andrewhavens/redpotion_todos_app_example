# Sample Todo List App
## Made with RedPotion

### Wishlist:

Scaffolding generator:
* Command: `potion g scaffold todo title:string completed:boolean due_date:datetime`
* [Expected result after generator](https://github.com/andrewhavens/redpotion_todos_app_example/compare/36d417789d44a6b46f27345ae9c04bc0fa0cf147...d25dbc4b3cb7ecd999df6ebb8c4161b1ee3212d6)

Model generator:
* Command: `potion g model todo title:string completed:boolean due_date:datetime`
* [Expected result after generator](https://github.com/andrewhavens/redpotion_todos_app_example/commit/510e8b1675ad7a44eba44efdd4b3fea987976bc0)

DataTableScreen generator:
* Don't use DataTableScreen! Use a regular table screen for easier customization.
* Maybe deprecate DataTableScreen and change the generator? Or create a new `cdq_table_screen` generator.
* Command: `potion g cdq_table_screen todos`
* [Expected result after generator](https://github.com/andrewhavens/redpotion_todos_app_example/blob/c2f0ab934fb7db350d3a38122342e7000c126c4c/app/screens/todos_screen.rb)
* [More complete example with swipe to delete](https://github.com/andrewhavens/redpotion_todos_app_example/blob/d25dbc4b3cb7ecd999df6ebb8c4161b1ee3212d6/app/screens/todos_screen.rb)

PM::XLFormScreen generator:
* Using the generator could enable the commented out PM::XLForm gem in the `Gemfile`, run `bundle` and `rake pod:install`.
* Command: `potion g form_screen new_todo title:string due_date:datetime completed:boolean`
* [Expected result after generator](https://github.com/andrewhavens/redpotion_todos_app_example/blob/a729dd58b74000374450b037d0d35dfdd130d644/app/screens/new_todo_screen.rb)
* Command: `potion g form_screen edit_todo title:string due_date:datetime completed:boolean`
* [Expected result after generator](https://github.com/andrewhavens/redpotion_todos_app_example/blob/a729dd58b74000374450b037d0d35dfdd130d644/app/screens/edit_todo_screen.rb)
* Ideally, we create a form screen that can be shared between states.
* Command: `potion g form_screen todo_form title:string due_date:datetime completed:boolean`
