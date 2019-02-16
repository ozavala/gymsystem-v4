require "administrate/base_dashboard"

class ScheduleDashboard < Administrate::BaseDashboard
    ATTRIBUTE_TYPES = {
      gymsite: Field::BelongsTo,
      trainer: Field::BelongsTo,
      name: Field::String,
      start_time: Field::DateTime,
      end_time: Field::DateTime

    }.freeze

      COLLECTION_ATTRIBUTES = [
        :gymsite,
        :trainer,
        :start_time,
        :name,
        :end_time

      ].freeze

        SHOW_PAGE_ATTRIBUTES = [
          :gymsite,
          :trainer,
          :start_time,
          :name,
          :end_time
        ].freeze

        FORM_ATTRIBUTES = [
          :gymsite,
          :trainer,
          :start_time,
          :name,
          :end_time
        ].freeze
end
