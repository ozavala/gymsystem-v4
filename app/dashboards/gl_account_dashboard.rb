require "administrate/base_dashboard"

class GlAccountDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    account_type: Field::BelongsTo,
    billing_accounts: Field::HasMany,
    id: Field::Number,
    acc_code: Field::String,
    acc_parent_code: Field::String,
    name: Field::String,
    description: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    # :account_type,
    :id,
    :acc_code,
    :acc_parent_code,
    :name,
    :description,

  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [

    :id,
    :acc_code,
    :acc_parent_code,
    :name,
    :description,

  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    # :account_type,
    :account_type,
    :acc_code,
    :acc_parent_code,
    :name,
    :description,
  ].freeze

  # Overwrite this method to customize how gl accounts are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(gl_account)
  #   "GlAccount ##{gl_account.id}"
  # end
end
