### Get Heroku Request ID
```ruby
request.env['HTTP_X_REQUEST_ID']
```

### Create a simple plugin
```ruby
rails plugin new geared_pagination
```

### Create a mountable plugin
```ruby
rails plugin new turbo_rails --mountable
```

### Where condition
```ruby
.where(quantity: 1..Float::INFINITY)
```

### Create plugin
```ruby
rails plugin new
```

```ruby
# This will group users by the timestamp their account was created.
User.group(:created_at).count
{
  Fri, 22 Apr 2022 10: 06: 18.854525000 UTC + 00: 00 => 1,
  Fri, 22 Apr 2022 10: 06: 18.855763000 UTC + 00: 00 => 1,
  Fri, 22 Apr 2022 10: 06: 18.852751000 UTC + 00: 00 => 1
}
# This will group users by the date their account was created.
User.group("created at::date").count
# Alternative syntax
# User.group ("CAST (created at AS date) ").count
{
  Fri, 22 Apr 2022 => 3
}
# Range needed to account for timestamp.
User
.where(created at: Time.current.beginning_of_day..Time.current.end_of_day)
.count
# Casting the timestamp to a date allows for a simple comparison.
User
.where("created_at: :date = ?", Date.current)
.count
# PostgreSQL Documentation on CAST
# https://www.postgresql.org/docs/current/sql-createcast.html
```

```erb
<% body = capture do %>
  <div>
    The body of the modal goes here!
    <%= link_to "Confirm", "#" %>
  </div>
<% end %>
<%= render "shared/modal", body: body %>
# shared/_modal.html.erb
<div>
  <div>Header</div>
  <div><%= body %></div>
  <div>Fooder</div>
</div>
```