# Shopify CLI commands for apps

### Create a new extension
```bash
yarn shopify app generate extension
```

### Add a webhook
```bash
bin/rails g shopify_app:add_webhook --topic customers/create --path customers/create
```
