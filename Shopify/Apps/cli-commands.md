# Shopify CLI commands for apps

### Create a new extension
```bash
yarn shopify app generate extension
```

### Add a webhook
```bash
rails g shopify_app:add_webhook --topic app/uninstalled --path custom_webhooks/app_uninstalled
```