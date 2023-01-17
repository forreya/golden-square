
class PasswordChecker
  def check(password)
    if password.length >= 8
      true
    else
      "Password must be longer or equal to 8 characters."
    end
  end
end