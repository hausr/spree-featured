require 'spree_core'

module SpreeFeatured
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

      Spree::Product.class_eval do
        scope :featured,:conditions => ['deleted_at is null and featured = ?', true]
      end
      
      Deface::Override.new(
        :virtual_path  => "spree/admin/products/index",
        :insert_after => '[data-hook="admin_product_form_right"]',
        :partial          => 'admin/products/spree_featured_admin_product_fields.html',
        :name => "product_fields"
      )
      Deface::Override.new(
        :virtual_path  => "spree/admin/products/index",
        :insert_after => '[data-hook="admin_products_index_rows"]',
        :partial          => 'admin/products/spree_featured_admin_product_listing.html',
        :name => "product_listing"
      )
      Deface::Override.new(
        :virtual_path  => "spree/admin/products/index",
        :insert_after => '[data-hook="admin_products_index_headers"]',
        :partial          => 'admin/products/spree_featured_admin_product_headers.html',
        :name => "product_header"
      )
    end

    config.to_prepare &method(:activate).to_proc
  end
end
