
def make_snippet(str)
  str_array = str.split(' ')
  if str_array.length <= 5
    str
  else
    snippet = str_array[0..4].join(' ') + '...'
    snippet
  end
end