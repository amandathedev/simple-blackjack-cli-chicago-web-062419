def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return (rand(1..11))
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  method = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  if card_total > 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  round_total = deal_card + deal_card
  display_card_total(round_total)
  return round_total
end

def hit?(round_total)
  # code hit? here
  prompt_user
  choice = get_user_input
  if choice == "s"
    return round_total
  elsif choice == "h"
    round_total += deal_card
    # return round_total
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  round_total = initial_round
  until round_total > 21
    round_total = hit?(round_total)
  display_card_total(round_total)
  end
end_game(round_total)
end