require "administrate/base_dashboard"

class MemberPaymentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    billing_account: Field::BelongsTo,
    id: Field::Number,
    due_date: Field::DateTime,
    payment_date: Field::DateTime,
    amount_due: Field::String.with_options(searchable: false),
    payment_amount: Field::String.with_options(searchable: false),
    payment_method: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :billing_account,
    :id,
    :due_date,
    :payment_date,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :billing_account,
    :id,
    :due_date,
    :payment_date,
    :amount_due,
    :payment_amount,
    :payment_method,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :billing_account,
    :due_date,
    :payment_date,
    :amount_due,
    :payment_amount,
    :payment_method,
  ].freeze

  # Overwrite this method to customize how member payments are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(member_payment)
  #   "MemberPayment ##{member_payment.id}"
  # end
end
