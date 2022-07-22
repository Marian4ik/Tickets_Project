class Ticket < ApplicationRecord
    STATES = %w[Pending In-progress Done].freeze
    
    belongs_to :worker
    
    validates :title, :description, presence: true
end
