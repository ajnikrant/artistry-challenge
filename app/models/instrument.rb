class Instrument < ApplicationRecord
    has_many :playtimes
    has_many :artists, through: :playtimes
end
