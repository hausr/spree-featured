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