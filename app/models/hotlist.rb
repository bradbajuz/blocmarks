class Hotlist < ActiveRecord::Base
  belongs_to :bookmark

  default_scope { order('updated_at DESC') }
end
