# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{spree_featured}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Felix Hanley"]
  s.date = %q{2011-05-18}
  s.description = %q{Adds the basic ability to 'feature' products. Includes basic administration additions to enable and disable featured products and show featured products in the product list view.}
  s.email = %q{felix@seconddrawer.com.au}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.mkd"
  ]
  s.files = [
    "LICENSE.txt",
    "README.mkd",
    "Rakefile",
    "VERSION",
    "app/views/admin/products/_spree_featured_admin_product_fields.html.erb",
    "app/views/admin/products/_spree_featured_admin_product_headers.html.erb",
    "app/views/admin/products/_spree_featured_admin_product_listing.html.erb",
    "app/views/shared/_featured.html.erb",
    "config/locales/en.yml",
    "db/migrate/20101221123800_add_product_featured_field.rb",
    "lib/spree_featured.rb",
    "lib/spree_featured_hooks.rb",
    "lib/tasks/install.rake",
    "lib/tasks/spree_featured.rake",
    "spree_featured.gemspec"
  ]
  s.homepage = %q{http://github.com/felix/spree-featured}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Featured products in Spree}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

