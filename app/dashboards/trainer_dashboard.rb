require "administrate/base_dashboard"

class TrainerDashboard < Administrate::BaseDashboard
  def display_resource(trainer)
    "#{trainer.first_name} #{trainer.last_name}"
  end
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    gymsite: Field::BelongsTo,
    first_name: Field::String,
    last_name: Field::String,
    email: Field::Email,
    skill: Field::Number,
    note: Field::Text
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [

    :first_name,
    :last_name,
    :email,
    :skill,
    :note
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :first_name,
    :last_name,
    :email,
    :skill,
    :note
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :gymsite,
    :first_name,
    :last_name,
    :email,
    :skill,
    :note

  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
