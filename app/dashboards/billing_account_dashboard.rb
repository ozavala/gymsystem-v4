require "administrate/base_dashboard"

class BillingAccountDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    member: Field::BelongsTo,
    gl_account: Field::BelongsTo,
    member_payments: Field::HasMany,
    id: Field::Number,
    balance: Field::String.with_options(searchable: false),
    status: Field::Number,
    payment_due_date: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :member,
    :gl_account,
    :member_payments,
    :balance,
    :status,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :member,
    :gl_account,
    :member_payments,
    :balance,
    :status,
    :payment_due_date,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :member,
    :gl_account,
    :member_payments,
    :balance,
    :status,
    :payment_due_date,
  ].freeze

  # Overwrite this method to customize how billing accounts are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(billing_account)
  #   "BillingAccount ##{billing_account.id}"
  # end
end
