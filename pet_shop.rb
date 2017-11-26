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

def add_pet_to_stock(pet_shop, new_pet)
  pets = pet_shop[:pets]
  pets.push(new_pet)
end

def customer_pet_count(customer_pets)
  number_of_pets = customer_pets[:pets].count()
  return number_of_pets
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet == nil
    return nil
  else
    if customer[:cash] < pet[:price]
      return nil
    else
      customer[:pets].push(pet)
      pet_shop[:admin][:total_cash] += pet[:price]
      pet_shop[:admin][:pets_sold] += 1
    end
  end
end
