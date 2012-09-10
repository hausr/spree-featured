Spree::Product.class_eval do
  attr_accessible :featured
  scope :featured,:conditions => ['deleted_at is null and featured = ?', true]
end