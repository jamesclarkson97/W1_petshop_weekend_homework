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