module Olery
  class Group < Sequel::Model

    one_to_many :hotels_group, key: :hotels_group_id
    one_to_one :group_subscription, key: :group_subscription_id

  end
end
