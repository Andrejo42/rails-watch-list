class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list}
end


# A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
# The comment of a bookmark cannot be shorter than 6 characters.


# A bookmark adds a movie to a list (e.g. Wonder Woman has been added to the “Girl Power” watch list).

# So each bookmark references a movie and a list, with a comment.

# The comment field is for the user to add a little note on the bookmark (e.g. Alan Turing recommended this movie).


# validates :title, uniqueness: true, presence: true
# validates :overview, uniqueness: true, presence: true
# validates :poster_url, presence: true
# validates :rating,  inclusion: { in: [1,6.9], allow_nil: false }
