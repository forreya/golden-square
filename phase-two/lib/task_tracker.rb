
def task_tracker(text)
  fail 'Only strings are accepted as inputs.' if !text.kind_of?(String)
  if !text.include?('#TODO')
    false
  else
    true
  end
end