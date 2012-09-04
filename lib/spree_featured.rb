require 'spree_core'

module SpreeFeatured
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

      Spree::Product.class_eval do
        attr_accessible :featured
        scope :featured,:conditions => ['deleted_at is null and featured = ?', true]
      end
      
      Deface::Override.new(
        :virtual_path  => "spree/admin/products/_form",
        :insert_bottom => '[data-hook="admin_product_form_right"]',
        :text          => "<p><%= f.label :featured, t('featured?') %> <%= f.check_box :featured %></p>",
        :name => "product_fields"
      )
      Deface::Override.new(
        :virtual_path  => "spree/admin/products/index",
        :insert_top => '[data-hook="admin_products_index_row_actions"]',
        :text          => "<%= product.featured? ? image_tag('admin/icons/tick.png'): '' %>&nbsp;&nbsp;&nbsp;",
        :name => "product_listing"
      )
    end

    config.to_prepare &method(:activate).to_proc
  end
end
