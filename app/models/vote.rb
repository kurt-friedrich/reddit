class Vote < ActiveRecord::Base
  belongs_to :link, counter_cache: true

end
