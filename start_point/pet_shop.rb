def pet_shop_name(dataname)
  dataname[:name]
end

def total_cash(dataname)
  dataname[:admin][:total_cash]
end

def add_or_remove_cash(dataname,amount)
  dataname[:admin][:total_cash] += amount
end  
