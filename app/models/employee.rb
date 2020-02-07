class Employee < ApplicationRecord
    belongs_to :dog
    validates :first_name, :last_name, :title, :office, :img_url, presence: true
    validates :alias, :title, uniqueness: true
    validates :img_url, format: URI::regexp(%w[http https])
end
