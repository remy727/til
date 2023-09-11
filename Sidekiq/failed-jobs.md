# Sidekiq failed jobs

```rb
require "sidekiq/api"

ds = Sidekiq::DeadSet.new

# Check size
ds.size

# Clear DeadSet
ds.clear

# Check failed jobs
ds.select do |job|
  puts job.display_class
  puts job.args.to_json
end
```