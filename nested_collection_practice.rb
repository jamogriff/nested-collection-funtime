require_relative 'expectations'
require_relative 'restaurant'

# These 3 tests were curated to test manipulation of nested collections
RSpec.describe 'Nested Collection Fun-Time' do
  
  describe 'Part One' do
    states = {
      "Oregon" => "OR",
      "Alabama" => "AL",
      "New Jersey" => "NJ",
      "Colorado" => "CO"
      }

    capitals = {
      "OR" => "Salem",
      "AL" => "Montgomery",
      "NJ" => "Trenton",
      "CO" => "Denver"
      }
    
    it 'is a nested hash' do
      # Write code to nest the key-val pairs of the capitals hash within
      # the state's key. Example:
      #   {  "Oregon" => {abbreviation: "OR", capital: "Salem"}, etc... }
      state_info = {}
      states.each do |state, abbrv|
        state_info[state] = {
          abbreviation: abbrv,
          capital: capitals[abbrv]
        }
      end
      expect(state_info).to eq(DataStruct.states)
    end
  end 

  describe 'Part Two' do
    ages = [
      ['Frank', 33],
      ['Stacy', 15],
      ['Juan', 24],
      ['Dom', 32],
      ['Steve', 24],
      ['Jill', 24]
          ]

    it 'creates a nested hash where age is the key' do
      # Write code that creates a hash that follows this pattern:
      #  e.g. {24 => ['Juan', 'Steve', 'Jill']...}
      people_by_age = {}
      ages.each do |person|
        if people_by_age.has_key?(person[1])
          people_by_age[person[1]] << person[0]
        else
          people_by_age[person[1]] = [person[0]]
        end
      end
      expect(people_by_age).to eq(DataStruct.people)
    end
  end

  describe 'Part 3' do

    it 'can return all ingredients across all restaurants' do
      # Write code that returns a list of all of the ingredients across
      # all restaurants in the hash found in restaurant.rb
      # Note: reference 'Restaurant.stores' when refering to the above hash.
      ingredients = []
      Restaurant.stores.each do |store, info|
        info[:dishes].each do |dish|
          ingredients << dish[:ingredients]
        end
      end
      formatted_ingredients = ingredients.flatten
      expect(formatted_ingredients).to eq(DataStruct.ingredients)
    end
  end

end
