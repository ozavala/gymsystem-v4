require "administrate/base_dashboard"

class GymsiteDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    legal_id: Field::String,
    street_address: Field::String,
    city: Field::String,
    state: Field::String,
    zip: Field::String,
    phone: Field::String,
    email: Field::String,
    logo: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :legal_id,
    :phone,
    :email
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :legal_id,
    :street_address,
    :city,
    :state,
    :zip,
    :phone,
    :email,
    :logo,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :legal_id,
    :street_address,
    :city,
    :state,
    :zip,
    :phone,
    :email,
    :logo,
  ].freeze

  # Overwrite this method to customize how gymsites are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(gymsite)
  #   "Gymsite ##{gymsite.id}"
  # end
end
