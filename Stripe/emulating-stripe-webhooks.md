# Emulating Stripe Webhooks
1. Install the Stripe CLI with brew, and run `stripe login` to login to Stripe account.
2. Start the app's dev server(e.g. localhost: 3000)
3. Run `stripe listen --forward-to localhost:3000/webhooks/onboarding` to forward webhooks to that endpoint on the local server.
4. In another terminal, run `stripe trigger account.updated` to trigger a mock event to be posted to the webhook

### Tips
- Get a full list of events with `stripe trigger --help`
- Use `stripe listen -j` to output the json of the webhook to the terminal
- When triggering events, some require some setup which the Stripe CLI conveniently does for you. But that can create some noise for your webhook(for example, if your `stripe trigger account.updated`), the Stripe CLI will first create an account before it updates it, resulting in multiple events. To filter the noise for just the events you're interested in, provide a comma-separated list to `stripe listen`, like so:
```bash
stripe listen --forward-to localhost:3000/webhooks/onboarding --events account.updated,account.application.deauthorized
```
- To inspect a specific event
```bash
stripe events retrieve evt_kjsdfu23gjsjldkfj
```
