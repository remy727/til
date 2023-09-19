# Hash

### hash.merge accepts block
```bash
[1] pry(main)> h1 = { supplier: [:name] }
=> {:supplier=>[:name]}
[2] pry(main)> h2 = { supplier: [:email] }
=> {:supplier=>[:email]}
[3] pry(main)> h3 = h1.merge(h2) { |key, old_v, new_v| old_v + new_v }
=> {:supplier=>[:name, :email]}
```