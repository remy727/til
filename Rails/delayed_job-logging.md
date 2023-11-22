# Logging in Delayed Job

```rb
# config/initializers/delayed_job.rb
Delayed::Worker.logger = Logger.new(File.join(Rails.root, 'log', 'dj.log'))
```

In the job, output to this log with:
```rb
Delayed::Worker.logger.info("Logging works!")
```