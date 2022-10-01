module Olery
  class Hotel < Sequel::Model

    one_to_many :hotels_group, key: :hotels_group_id

  end
end
