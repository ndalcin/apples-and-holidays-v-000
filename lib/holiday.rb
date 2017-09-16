require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, array|
    array << supply
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].collect do |holiday, supplies|
    supplies
  end.flatten
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_data_hash|
    puts "#{season.to_s.capitalize}:"
    holiday_data_hash.each do |holiday_name, supplies|
      puts "  #{holiday_name.to_s.split("_").collect{|x| x.capitalize}.join(" ")}: #{supplies.join(", ")}" #puts Christmas: stuff
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
bbq_holidays = []
  holiday_hash.each do |season, holiday_data_hash|
    holiday_data_hash.each do |holiday_name, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          bbq_holidays<< holiday_name
        end
      end
    end
  end
  bbq_holidays
end
