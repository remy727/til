# Active Record’s `rewhere`

The [rewhere](https://guides.rubyonrails.org/v7.0/active_record_querying.html#rewhere) method overrides an existing, named where condition. For example:

```ruby
Book.where(out_of_print: true).rewhere(out_of_print: false)
```

The SQL that would be executed:
```sql
SELECT * FROM books WHERE out_of_print = 0
```

It can be handy for overriding a [default_scope](https://guides.rubyonrails.org/v7.0/active_record_querying.html#applying-a-default-scope) or when building an index page with a couple of filters, and one of those must override previous ones applied.

There’s also [reorder](https://guides.rubyonrails.org/v7.0/active_record_querying.html#reorder) and [reselect](https://guides.rubyonrails.org/v7.0/active_record_querying.html#reselect)