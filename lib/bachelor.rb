require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  seasons = data[season]

  seasons.each do | x|
  if x["status"] == "Winner"
    name1 = x["name"].split(" ")
    return name1[0]
  end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |x,y|
    y.each do | z|
      if z["occupation"] == occupation
          return z["name"]
      end
  end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  i=0
  data.each do |x,y|
    y.each do | z|
      if z["hometown"] == hometown
          i+=1
      end
  end
  end
  return i
end

def get_occupation(data, hometown)
  # code here
 oc = nil
  data.each do |x,y|
    y.each do | z|
      if z["hometown"] == hometown
          return z["occupation"]
      end
  end
  end

end

def get_average_age_for_season(data, season)
  # code here
  seasons = data[season]
  i=0
  age =0
  seasons.each do | x|
    i+=1
    age += x["age"].to_f
  end


  return (age/i).round
  end
