def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,number_sold)
    pet_shop[:admin][:pets_sold] += number_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].count()
end

def pets_by_breed(pet_shop, breed)
  pets = pet_shop[:pets]
  pets_of_breed = Array.new
  for pet in pets
    if pet[:breed] == breed
      pets_of_breed << pet
    end
  end
  return pets_of_breed
end

def find_pet_by_name(pet_shop, pet_name)
  pets = pet_shop[:pets]
  for pet in pets
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  pets = pet_shop[:pets]
  for pet in pets
    if pet[:name] == pet_name
      pets.delete(pet)
    end
  end
end
