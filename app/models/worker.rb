class Worker < ApplicationRecord
    ROLES = %w[Manager Developer UI/UX_Designer].freeze
    
    has_many :tickets

    validates :first_name, presence: true
end
