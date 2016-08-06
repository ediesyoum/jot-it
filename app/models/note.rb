class Note < ApplicationRecord
  belongs_to :user, inverse_of: :note
end
