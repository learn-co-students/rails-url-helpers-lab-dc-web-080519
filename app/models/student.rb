class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activation
    if self.active == true
      self.active = false
    elsif self.active == false
      self.active = true
    else
      return "ERROR"
    end
  end
end
