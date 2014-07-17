# encoding: utf-8

def genders
   %w(男 女)
end

def birth_years
  end_year = Time.now.year
  ((end_year - 90)..(end_year - 18)).to_a
end
