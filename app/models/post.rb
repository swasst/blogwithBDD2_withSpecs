class Post < ActiveRecord::Base
   has_many :comments

   #validates_presence_of :title,:content
   validates :title, presence: true, length: { minimum: 5  }
   validates :content, presence: true, length: { minimum: 10  }
end
