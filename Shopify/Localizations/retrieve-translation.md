# Retrieve translatable content for a collection

```ruby
session = ShopifyAPI::Auth::Session.new(
  shop: "your-development-store.myshopify.com",
  access_token: access_token
)
client = ShopifyAPI::Clients::Graphql::Admin.new(
  session: session
)

query = <<~QUERY
  query {
    translatableResource(resourceId: "gid://shopify/Collection/1007901140") {
      resourceId
      translatableContent {
        key
        value
        digest
        locale
      }
    }
  }
QUERY

response = client.query(query: query)
```

# Response
```json
 {
   "translatableResource": {
     "resourceId": "gid://shopify/Collection/1007901140",
     "translatableContent": [
       {
         "key": "title",
         "value": "Featured items",
         "digest": "a18b34037fda5b1afd720d4b85b86a8a75b5e389452f84f5b6d2b8e210869fd7",
         "locale": "en"
       },
       {
         "key": "body_html",
         "value": null,
         "digest": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
         "locale": "en"
       },
       {
         "key": "meta_title",
         "value": null,
         "digest": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
         "locale": "en"
       },
       {
         "key": "meta_description",
         "value": null,
         "digest": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
         "locale": "en"
       }
     ]
   }
 }
 ```