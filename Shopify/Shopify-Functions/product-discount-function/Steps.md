# [Steps to create Shopify Extension](https://shopify.dev/docs/apps/selling-strategies/discounts/experience/getting-started)

### Step 1: Create the product discount function
1. Navigate to the app directory:
```bash
$ cd <directory>
```
2. Run the following commands to create a new product discount extension:
```bash
$ yarn shopify app generate extension --template product_discounts --name product-discount
```
3. Choose the language. Select `JavaScript`.
4. Navigate to `extensions/product-discount`:
```bash
$ cd extensions/product-discount
```
5. Replace the contents of `input.graphql` file.
6. Run the following command to regenerate types based on the input query:
```bash
$ yarn shopify app function typegen
```
7. Replace the `src/index.js` file.

### Step 2: Preview the function on a development store(Preview the function using simplified deployment)
1. Navigate back to the app root:
```bash
$ cd ../../
```
2. Deploy your app using the Shopify CLI deploy command. Use the --no-release flag to avoid releasing an app version.
```bash
$ yarn deploy --no-release
```
3. Use the Shopify CLI [dev command](https://shopify.dev/docs/apps/tools/cli/commands#dev) to start app preview:
```bash
$ yarn dev
```


### Step 3: Update your app access scopes
1. In `shopify.app.toml`, located in the root of your app, add the `write_discounts` scope:
```
# This file stores configurations for your Shopify app.

scopes = "write_products, write_discounts"
```
2. Push your updated configuration to Shopify:
```bash
yarn shopify app config push
```
3. Restart your app:
```bash
yarn dev
```
Use the URL provided by the CLI to open or re-install your app. You should be prompted to accept the new access scope permissions in your store.

### Step 4: Create the product discount with GraphQL
Execute the following mutation and replace YOUR_FUNCTION_ID_HERE with the ID of your function:
```graphql
mutation {
  discountAutomaticAppCreate(automaticAppDiscount: {
    title: "Volume discount",
    functionId: "YOUR_FUNCTION_ID_HERE",
    startsAt: "2022-06-22T00:00:00"
  }) {
     automaticAppDiscount {
      discountId
     }
     userErrors {
      field
      message
     }
  }
}
```

### Step 5: Test the product discount