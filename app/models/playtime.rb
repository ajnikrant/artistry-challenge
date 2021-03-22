class Playtime < ApplicationRecord
    belongs_to :instrument, dependent: :destroy
    belongs_to :artist, dependent: :destroy
    validates :artist_id, :instrument_id, presence: true

end