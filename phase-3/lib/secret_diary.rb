
class SecretDiary
  def initialize(diary) 
    @contents = diary.read
    @is_locked = true
    # diary is an instance of Diary
    # ...
  end

  def read
    fail "Go away!" if @is_locked == true
    @contents
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
  end

  def lock
    @is_locked = true
    # Locks the diary
    # Returns nothing
  end

  def unlock
    @is_locked = false
    # Unlocks the diary
    # Returns nothing
  end
end