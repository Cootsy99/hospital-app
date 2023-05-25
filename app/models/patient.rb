class Patient < ApplicationRecord
    validates :first_name, :last_name, :diagnosis, :born_on, presence: true
    validates :first_name, :last_name, length: { maximum: 50 }
end
