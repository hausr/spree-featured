class AddProductFeaturedField < ActiveRecord::Migration
  def up
    add_column :products, :featured, :boolean, :default => false, :null => false
  end

  def down
    remove_column :products, :featured
  end
end
