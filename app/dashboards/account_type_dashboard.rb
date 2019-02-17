require "administrate/base_dashboard"

class AccountTypeDashboard < Administrate::BaseDashboard
  def display_resource(account_type)
    account_type.acc_type_code
  end
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    gl_accounts: Field::HasMany,
    id: Field::Number,
    acc_type_code: Field::String,
    classification: Field::String,
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
    :acc_type_code,
    :classification,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :acc_type_code,
    :classification,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :gl_accounts,
    :acc_type_code,
    :classification,
  ].freeze

  # Overwrite this method to customize how account types are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(account_type)
  #   "AccountType ##{account_type.id}"
  # end
end
