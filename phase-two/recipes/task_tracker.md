
# Task Tracker Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

```
is_a_task = task_tracker(text)

# text: a string (e.g. 'wash the dishes #TODO')
# is_a_task: a boolean value (e.g. true)

```

## 3. Create Examples as Tests

```ruby
# 1
task_tracker('')
# => false

# 2
task_tracker('wash the dishes')
# => false

# 3
task_tracker('wash the dishes #TODO')
# => true

# 4
task_tracker(1)
# => 'Only strings are accepted as inputs.'

#5
task_tracker(1.5)
# => 'Only strings are accepted as inputs.'

```

## 4. Implement the Behaviour
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._