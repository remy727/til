# Polymorphic Association

### Migrations
```ruby
# db/migrate/20230524183828_create_products.rb

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.bigint(:shopify_id, null: false, index: { unique: true })
      t.string(:handle, null: false, index: { unique: true })

      t.timestamps
    end
  end
end

# db/migrate/20230524183834_create_variants.rb

class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.belongs_to(:product, foreign_key: true, index: true, null: false)
      t.bigint(:shopify_id, null: false, index: { unique: true })
      t.integer(:inventory_quantity, null: false, default: 0)

      t.timestamps
    end
  end
end

# db/migrate/20230524183843_create_metafields.rb

class CreateMetafields < ActiveRecord::Migration[7.0]
  def change
    create_table :metafields do |t|
      t.bigint(:shopify_id, null: false, index: { unique: true })
      t.string(:namespace, null: false)
      t.string(:key, null: false)
      t.string(:value, null: false)
      t.references(:metafieldable, polymorphic: true, null: false)

      t.timestamps
    end

    add_index :metafields, [:metafieldable_id, :metafieldable_type]
  end
end
```

### Models
```ruby
# app/models/product.rb

class Product < ApplicationRecord
  has_many :variants, dependent: :destroy
  has_many :metafields, as: :metafieldable
end

# app/models/variant.rb

class Variant < ApplicationRecord
  belongs_to :product
  has_many :metafields, as: :metafieldable
end

# app/models/metafield.rb

class Metafield < ApplicationRecord
  belongs_to :metafieldable, polymorphic: true
end

```

### Example
```bash
irb(main):001:0> product = Product.create!(shopify_id: 3935994576968, handle: "lil-fluffy")
irb(main):002:0> metafield = Metafield.create!(shopify_id: 22356028588274, namespace: "global", key: "pre_order_inventory", value: "847", metafieldable: product)
```