class Ticket < ActiveRecord::Base
  attr_accessible :content, :title, :status, :description, :name

  def status_output
    if status == 1
      "Untouched"
    elsif status == 2
      "In progress"
    elsif status == 3
      "Solved"
    else
      "Unidentified"
    end
  end

  def description_output
    if description == 1
      "Error"
    elsif description == 2
      "User interface"
    elsif description == 3
      "Layout/styling"
    elsif description == 4
      "(application) Performance"
    elsif description == 5
      "Other"
    else
      "Unidentified"
    end
  end

end
