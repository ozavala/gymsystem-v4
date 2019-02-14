require "administrate/base_dashboard"

class MemberDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    gymsite: Field::BelongsTo,
    id: Field::Number,
    email: Field::String,
    password_digest: Field::String,
    first_name: Field::String,
    last_name: Field::String,
    street_address: Field::String,
    city: Field::String,
    state: Field::String,
    zip: Field::String,
    phone: Field::String,
    birthday: Field::DateTime,
    is_active: Field::Boolean,
    avatar: Field::String,
    notes: Field::Text,
    from_date: Field::DateTime,
    to_date: Field::DateTime,
    level: Field::Enumerize.with_options(enumerable: true),
    membership_type: Field::Enumerize.with_options(enumerable: true),
    membership_price: Field::String.with_options(searchable: false),
    source: Field::Enumerize.with_options(enumerable: true),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :gymsite,
    :first_name,
    :last_name,
    :email,
    :phone
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :gymsite,
    :id,
    :email,
    :password_digest,
    :first_name,
    :last_name,
    :street_address,
    :city,
    :state,
    :zip,
    :phone,
    :birthday,
    :is_active,
    :avatar,
    :notes,
    :from_date,
    :to_date,
    :level,
    :membership_type,
    :membership_price,
    :source,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :gymsite,
    :email,
    :password_digest,
    :first_name,
    :last_name,
    :street_address,
    :city,
    :state,
    :zip,
    :phone,
    :birthday,
    :is_active,
    :avatar,
    :notes,
    :from_date,
    :to_date,
    :level,
    :membership_type,
    :membership_price,
    :source,
  ].freeze

  # Overwrite this method to customize how members are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(member)
  #   "Member ##{member.id}"
  # end
end
