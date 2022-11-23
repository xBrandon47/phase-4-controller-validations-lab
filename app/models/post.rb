class Post < ApplicationRecord
    validates :title, presence: true
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
    validates :content, length: {minimum: 100}

    # in means what range it should be like :in 1...5 
end
