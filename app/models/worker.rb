class Worker < ApplicationRecord
    ROLES = %w[Manager Developer UI/UX_Designer].freeze
    has_many :users
    has_many :tickets

    scope :active, -> {where(active: true)}

    validates :first_name, :last_name, :age, presence: true
    def full_name
        first_name + " " + last_name
    end

    def is_dev?
                
        role == 'Developer'
    end
end
