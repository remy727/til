# Register a French product title

```ruby
session = ShopifyAPI::Auth::Session.new(
  shop: "your-development-store.myshopify.com",
  access_token: access_token
)
client = ShopifyAPI::Clients::Graphql::Admin.new(
  session: session
)

query = <<~QUERY
  mutation translationsRegister($resourceId: ID!, $translations: [TranslationInput!]!) {
    translationsRegister(resourceId: $resourceId, translations: $translations) {
      userErrors {
        message
        field
      }
      translations {
        key
        value
      }
    }
  }
QUERY

variables = {
  "resourceId": "gid://shopify/Product/20995642",
  "translations": [
    {
      "locale"=>"fr",
      "key"=>"title",
      "value"=>"L'élément",
      "translatableContentDigest"=>"4e5b548d6d61f0006840aca106f7464a4b59e5a854317d5b57861b8423901bf6"
    }
  ]
}

response = client.query(query: query, variables: variables)
```

# Response
```json
{
   "translationsRegister": {
     "userErrors": [],
     "translations": [
       {
         "key": "title",
         "value": "L'élément"
       }
     ]
   }
 }
 ```