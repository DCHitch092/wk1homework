def pet_shop_name(dataname)
  dataname[:name]
end

def total_cash(dataname)
  dataname[:admin][:total_cash]
end

def add_or_remove_cash(dataname,amount)
  dataname[:admin][:total_cash] += amount
end

def pets_sold(dataname)
  dataname[:admin][:pets_sold]
end

def increase_pets_sold(dataname,number_sold)
  dataname[:admin][:pets_sold] += number_sold
end

def stock_count(dataname)
  dataname[:pets].count
end

def pets_by_breed(dataname, breed_name)
  breed_array = []
    for pet in dataname[:pets]
      if pet[:breed] == breed_name
        breed_array.push(breed_name)
      end
    end
  return breed_array
end


def find_pet_by_name(dataname, pet_name)
   for pet in dataname[:pets]
     if pet_name == pet[:name]
       return pet
     end
   end
   return nil
end
#
# found_pet = dataname[:pets].key(pet_name)
# puts found_pet
# #
# # found_pet = dataname[:pets].any? {|pet| pet[:name] == pet_name}
# # if found_pet == true
# #   dataname[:pets][:name]
# #   puts "pet #{pet_name} found at #{found_pet}"
# #
# #   return dataname[:pets][found_pet][:name]
# #   if found_pet.nil?
# #     retun nil
# #   else
# #   end


def remove_pet_by_name(dataname, pet_name)
    result = find_pet_by_name(dataname, pet_name)
    dataname[:pets].delete(result)
end

def add_pet_to_stock(dataname, new_pet)
  dataname[:pets].push(new_pet)
end

def customer_cash(identifier)
  identifier[:cash]
end

def remove_customer_cash(identifier, amount)
  identifier[:cash] -= amount
end

def customer_pet_count(identifier)
  identifier[:pets].count
end

def add_pet_to_customer(identifier, pet)
  identifier[:pets].push(pet)
end

def customer_can_afford_pet(identifier, new_pet)
  if identifier[:cash] >= @new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(dataname, pet, identifier)
  pet_check = find_pet_by_name(dataname, pet)
  puts pet_check
  if pet_check.nil? == true
    #add pet to customers
    identifier[:pets].push(pet)
    #increase pet shop's pet sold counter
    dataname[:admin][:pets_sold] += 1
    #decrease customer cash
    identifier[:cash] -= pet[:price]
    #remove cash from pet_shop
    dataname[:admin][:total_cash] += pet[:price]

  elsif pet_check.nil? == false
    puts "the pet sale cannot go through"
    return nil 

  end

end
