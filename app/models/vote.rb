class Vote < ActiveRecord::Base
  belongs_to :link, :user counter_cache: true

end
