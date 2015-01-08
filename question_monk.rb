class Candidate
  def years_of_experience(x)
    x > 2 ? true : false
  end
  def github_points(y)
    y >= 500 ? true : false
  end
  def age(z)
    z > 15 ? true : false
  end
  def applied_recently(i)
    i ? true : false
  end
  def languages_worked_with(array)
    if array.include?("Ruby")
      true
    else
      false
    end
  end
end
candidate = Candidate.new()
p candidate.years_of_experience(4)
p candidate.github_points(600)
p candidate.languages_worked_with(['c'])
p candidate.applied_recently(true)
p candidate.age(25)
