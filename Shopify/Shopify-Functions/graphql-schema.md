# [GraphQL schema](https://shopify.dev/docs/apps/functions/input-output#graphql-schema)

### [Generating the latest schema](https://shopify.dev/docs/apps/functions/input-output#generating-the-latest-schema)
To generate the latest GraphQL schema for your function, use the function schema command. This command outputs the latest schema based on your function's API type and version to the schema.graphql file:
```bash
$ npm run --silent shopify app function schema
```