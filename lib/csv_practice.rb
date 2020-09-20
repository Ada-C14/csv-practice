require 'csv'
require 'awesome_print'



def get_all_olympic_athletes(filename)
  rows = CSV.read(filename, headers: true)
  required_fields = %w[ID Name Height Team Year City Sport Event Medal]
  rows.map do |line|
    # {"ID" => line["ID"]}
    athlete = {}
    required_fields.each do |field_name|
      athlete[field_name] = line[field_name]
    end
    athlete
  end
end


def total_medals_per_team(olympic_data)
  total_medals_hash = {}
  medals_options = %w(Gold Silver Bronze)
  olympic_data.each do |athlete|
    if medals_options.include?(athlete["Medal"])
      if total_medals_hash[athlete["Team"]]
        total_medals_hash[athlete["Team"]] += 1
      else
        total_medals_hash[athlete["Team"]] = 1
      end
    end
  end
  return total_medals_hash
end


def tall_ppl_per_country(olympic_data)
  tall_ppl_hash = Hash.new(0)
  olympic_data.each do |athlete|
    if athlete["Height"].to_i > 180
      tall_ppl_hash[athlete["Team"]] += 1
    end
  end
  ap tall_ppl_hash.sort_by { |key, value| value}.to_h
end

# def get_all_gold_medalists(olympic_data)
# end

# Random personal reminders/notes:
# return boots you.
# How does it know that its
# delete_if { |k, v| k == delete}
# # /Users/ada/Documents/ada_exercises/csv-practice/data/athlete_events.csv