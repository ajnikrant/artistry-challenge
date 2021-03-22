class Artist < ApplicationRecord
    has_many :playtimes
    has_many :instruments, through: :playtimes
    validates :name, presence: true
    validates :title, uniqueness: true
end
