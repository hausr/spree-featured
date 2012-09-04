class AddProductFeaturedField < ActiveRecord::Migration
  def up
    add_column :spree_products, :featured, :boolean, :default => false, :null => false
  end

  def down
    remove_column :spree_products, :featured
  end
end
