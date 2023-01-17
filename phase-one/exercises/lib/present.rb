
class Present
  def wrap(contents)
    fail "The presents have already been wrapped." if !@contents.nil?
    @contents = contents
  end

  def unwrap()
    fail "There are no contents to unwrap." if @contents.nil?
    @contents
  end
end