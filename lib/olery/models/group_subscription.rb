module Olery
  class GroupSubscription < Sequel::Model

    one_to_one :group, key: :group_id

  end
end
