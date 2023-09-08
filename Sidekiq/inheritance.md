# Inhertiance

### Way 1: ActiveSupport::Concern module
```rb
# app/sidekiq/concerns/base_job.rb

require 'sidekiq/api'

Sidekiq::Job.extend ActiveSupport::Concern

module BaseJob
  extend ActiveSupport::Concern

  include Sidekiq::Job

  included do
  end

  class_methods do
  end
end

# app/sidekiq/hard_job.rb

class HardJob
  include BaseJob

  sidekiq_options queue: :hard, retry: 2

  def perform
  end
end
```

### Way 2: class inheritance
```rb
# app/sidekiq/base_job.rb
class BaseJob
  include Sidekiq::Job
end

# app/sidekiq/hard_job.rb
class HardJob < BaseJob
end
```
