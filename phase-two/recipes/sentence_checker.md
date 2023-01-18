
# Sentence Checker Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

```
is_sentence_correct = sentence_checker(sentence)

# sentence: a string (e.g. "hello how are you)
# is_sentence_correct: a boolean (e.g. false)
```

## 3. Create Examples as Tests

```ruby
# 1
sentence_checker('')
# => false

# 2
sentence_checker('Hello there')
# => false

# 3 
sentence_checker('hello there.')
# => false

# 4
sentence_checker('hello there')
# => false

# 5
sentence_checker('?')
# => false

# 6
sentence_checker('Hello there.')
# => true

```

## 4. Implement the Behaviour
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._