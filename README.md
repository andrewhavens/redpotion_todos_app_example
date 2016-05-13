# Sample Todo List App
## Made with RedPotion

### Wishlist:

Scaffolding generator:
* Command: `potion g scaffold todo title:string completed:boolean due_date:datetime`
* Expected result after generator: [Link to compare branch](#)

Model generator:
* Command: `potion g model todo title:string completed:boolean due_date:datetime`
* Expected result after generator: [Link to compare branch](#)

DataTableScreen generator:
* Don't use DataTableScreen! Use a regular table screen for easier customization.
* Maybe deprecate DataTableScreen and change the generator? Or create a new `cdq_table_screen` generator.
* Command: `potion g cdq_table_screen todos`
* Expected result after generator: [Link to compare branch](#)

PM::XLForm Form Screen generator:
* Using the generator could enable the commented out PM::XLForm in the `Gemfile`, run `bundle` and `rake pod:install`.
* Command: `potion g form_screen new_todo title:string due_date:datetime completed:boolean`
* Command: `potion g form_screen edit_todo title:string due_date:datetime completed:boolean`
* Ideally, we create a form screen that can be shared between states.
* Command: `potion g form_screen todo_form title:string due_date:datetime completed:boolean`
* Expected result after generator: [Link to compare branch](#)
