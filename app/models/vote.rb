class Vote < ActiveRecord::Base
  belongs_to :links, counter_cache: true

end
