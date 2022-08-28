class Ticket < ApplicationRecord
    
    validates :status, presence: true
    STATUSES = %i[Pending In-progress Done].map(&:to_s).freeze
    
    
    STATES = %w[Pending In-progress Done].freeze
    
    belongs_to :worker
    
    validates :title, presence: true, length: { maximum: 40 }
    validates :description, presence: true
end
