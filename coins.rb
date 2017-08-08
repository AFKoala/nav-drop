def coin_changer(cents_given_to_me)
  coin_value = {quarter: 25, dime: 10, nickel: 5, penny: 1}
  coins_given_to_customer = {quarter: 0, dime: 0, nickel: 0, penny: 0}

  coin_value.each do |coins, coin_worth|
    while cents_given_to_me.to_i >= coin_worth.to_i
      cents_given_to_me = cents_given_to_me.to_i - coin_worth.to_i
      coins_given_to_customer[coins] += 1
    end
  end
  coins_given_to_customer.collect { |key, value| "#{value} #{key}, "}.join
end