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
  for animal in dataname[:pets]
    if animal[:name] == pet_name
      return animal
    end
  end
  return nil
end

def remove_pet_by_name(dataname, pet_name)
    result = find_pet_by_name(dataname, pet_name)
    dataname[:pets].delete(result)
end
