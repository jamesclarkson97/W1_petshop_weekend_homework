def pet_shop_name(shop_name)
    return shop_name[:name]
end

def total_cash(shop_name)
    return shop_name[:admin][:total_cash]
end

def add_or_remove_cash(shop_name, value)
    shop_name[:admin][:total_cash] += value
    return total_cash(shop_name)
end

def pets_sold(shop_name)
    return shop_name[:admin][:pets_sold]
end

def increase_pets_sold(shop_name, new_sales)
    shop_name[:admin][:pets_sold] += new_sales
    return pets_sold(shop_name)
end

def stock_count(shop_name)
    return shop_name[:pets].length
end

def pets_by_breed(shop_name, breed)
    array_of_breeds = []   
    for pet in shop_name[:pets]          
        if pet[:breed] == breed
            array_of_breeds.push(pet[:name])
        end
    end
    return array_of_breeds
end

def find_pet_by_name(shop_name, name)
    for pet in shop_name[:pets]          
        if pet[:name] == name
            return pet
        end
    end
    return nil
end

def remove_pet_by_name(shop_name, nam)
    pet_to_be_removed = find_pet_by_name(shop_name, nam)
    shop_name[:pets].delete(pet_to_be_removed)
end

def add_pet_to_stock(shop_name, new_pet)
    shop_name[:pets].push(new_pet)
end

def customer_cash(customer)
    return customer[:cash]
end

def remove_customer_cash(customer, money)
    customer[:cash] -= money
    return customer_cash(customer)
end

def customer_pet_count(customer)
    return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
    customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
    if customer[:cash] >= new_pet[:price]
        return true
    else
        return false
    end
end