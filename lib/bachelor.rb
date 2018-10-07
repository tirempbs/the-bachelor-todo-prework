require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""

  data.each do |tv_season, info|
    if tv_season == season
      info.each do |k|
        if k["status"] == "Winner"
          winner << k["name"]
        end
      end
    end
  end

  winner.split[0]
end

def get_contestant_name(data, occupation)
  name = ""

  data.each do |tv_season, info|
    info.each do |k|
      if k["occupation"] == occupation
        name << k["name"]
      end
    end
  end

  name
end

def count_contestants_by_hometown(data, hometown)
  number_of_contestants = []

  data.each do |tv_season, info|
    info.each do |k|
      if k["hometown"] == hometown
        number_of_contestants << k["name"]
      end
    end
  end

  number_of_contestants.length
end

def get_occupation(data, hometown)
  occupation = ""

  data.each do |tv_season, info|
    info.each do |k|
      if k["hometown"] == hometown
        occupation = k["occupation"]
        break
      end
    end
  end

  occupation
end

def get_average_age_for_season(data, season)
  ages = []

  data.each do |tv_season, info|
    if tv_season == season
      info.each do |k|
        ages << k["age"].to_f
      end
    end
  end

  total = ages.inject(:+)
  average = total / ages.length
  average.round
end
