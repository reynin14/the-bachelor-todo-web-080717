require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  winner = nil
  data[season].each do |contestant|
    if contestant["status"].downcase == "winner"
       winner = contestant["name"]
    end
  end

  return winner.split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_count = 0
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        hometown_count += 1
      end
    end
  end

  hometown_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  num_of_contestants = 0
  data[season].each do |contestant_info|
    num_of_contestants += 1
    total_age += contestant_info["age"].to_i
  end

  (total_age/num_of_contestants.to_f).round
end
