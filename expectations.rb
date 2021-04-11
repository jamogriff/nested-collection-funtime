# This file contains the test expectations for the data structures used
# in nested_collections.rb
class Data

  def self.states
    {
       "Oregon" => {abbreviation: "OR", capital: "Salem"},
       "Alabama" => {abbreviation: "AL", capital: "Montgomery"},
       "New Jersey" => {abbreviation: "NJ", capital: "Trenton"},
       "Colorado" => {abbreviation: "CO", capital: "Denver"}
    }
  end

  def self.people
    {
        15 => 'Stacy',
        24 => ['Juan', 'Steve', 'Jill'], 
        32 => 'Dom',
        33 => 'Frank'
    }
  end

  def self.ingredients
    [
      "Rice",
      "Cheese",
      "Butter",
      "Beef",
      "Garlic",
      "Flour",
      "Eggs",
      "Milk",
      "Syrup",
      "Flour",
      "Eggs",
      "Syrup",
      "Bun",
      "Hamburger",
      "Ketchup",
      "pickles",
      "Potatoes",
      "Salt"
    ] 
  end
end
