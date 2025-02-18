class Movie < ApplicationRecord
    has_many :bookmarks
    validates :title, uniqueness: true, presence: true
    validates :overview, presence: true
end


# # * A movie has a title (e.g. "Wonder Woman 1984"), an overview ("Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s!"),
# a poster url and a rating (6.9).

# A movie must have a unique title and an overview.
