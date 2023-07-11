# How to validate the presence of a boolean field in a Rails model

```ruby
# app/models/question.rb
class Question < ApplicationRecord
  validates :required, inclusion: [true, false]
end

# specs/models/question_spec.rb
describe "#required" do
  it "only allows true or false" do
    expect(Question.new(required: false)).to be_valid
    expect(Question.new(required: true)).to be_valid
    expect(Question.new(required: nil)).to be_invalid
  end
end
```
