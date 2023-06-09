# Measuring Elapsed Time Correctly

I learned about [Process::CLOCK_MONOTONIC][Process::CLOCK_MONOTONIC-docs]. It should be used instead of system time updates when measuring elapsed time because it ensures that the measurement is accurate and not affected by system time updates.

```ruby
started_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
do_something(args)
ended_at = Process.clock_gettime(Process::CLOCK_MONOTONIC)
```

[Process::CLOCK_MONOTONIC-docs]: https://docs.ruby-lang.org/en/3.2/Process.html#CLOCK_MONOTONIC
