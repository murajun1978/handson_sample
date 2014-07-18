class Customer < ActiveRecord::Base
  include HandsontableActiverecord

  belongs_to :address
end
