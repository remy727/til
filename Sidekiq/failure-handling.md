# Failure handling

### Way 1: `sidekiq_retries_exhausted` hook
```rb
class HardJob
  sidekiq_options queue: :hard, retry: 2

  sidekiq_retries_exhausted do |msg, ex|
    Rails.logger.warn("Failed #{msg['class']} with #{msg['args']}: #{msg['error_message']}")

    # Do stuff
  end
end
```

### Way 2: Sidekiq configuration

```rb
Sidekiq.configure_server do |config|
  # Other config

  config.death_handlers << ->(job, ex) do
    Rails.logger.error "Uh oh, #{job['class']} #{job["jid"]} just died with error #{ex.message}."
  end
end
```
