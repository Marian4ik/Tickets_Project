class Worker < ApplicationRecord
    ROLES = %w[Manager Developer UI/UX_Designer].freeze
    has_many :users
    has_many :tickets

    scope :active, -> {where(active: true)}
    
    validates :first_name, presence: true, length: { maximum: 20 }, format: { with: /\A\D+\z/, message: "Numbers are not allowed" }
    validates :last_name, presence: true, length: { maximum: 20 }, format: { with: /\A\D+\z/, message: "Numbers are not allowed" }
    validates :age, presence: true, numericality: { in: 16..60, message: "Your age is not appropriate" }

    def full_name
        first_name + " " + last_name
    end

    def is_dev?
                
        role == 'Developer'
    end

end
