module Olery
  class HotelsGroup < Sequel::Model

    many_to_one :hotels, key: :contract_id

  end
end
