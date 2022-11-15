class Book2 < ApplicationRecord
    has_many:chapter2s, dependent: :destroy
end
