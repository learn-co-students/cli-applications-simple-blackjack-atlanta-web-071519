def welcome
  puts "Welcome to the Black Jack Table!"
end

def deal_card
  rand(1..11)
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(game)
  puts "Sorry, you hit #{game}. Thanks for playing!"
end

def initial_round
  a = deal_card
  b = deal_card
  deal_card
  display_card_total(a+b)
  return a+b

end

def hit?
  prompt_user
  a = get_user_input
  if a == "s"
  return card_total
  else
    b=deal_card
    return card_total+b
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  a = initial_round
  if a < 21
    b= hit?(a)
    display_card_total(b)
    if b < 21
      c = hit?(b)
      display_card_total(c)
      if b < 21
        d = hit?(c)
        display_card_total(d)
      else
        end_game(c)
      end
    else
      end_game(b)
    end
  else
    end_game(a)
  

end
    
