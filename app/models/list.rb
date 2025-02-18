class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end

# A list has a name (e.g. "Drama", "Comedy", "Classic", "To rewatch", … )
# A list must have a unique name.
