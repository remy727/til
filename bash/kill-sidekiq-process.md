# Kill Sidekiq processes
```bash
ps -ef | grep sidekiq | grep -v grep | awk '{print $2}' | xargs kill -9
```
