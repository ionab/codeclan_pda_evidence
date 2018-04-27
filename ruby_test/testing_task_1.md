### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame


  def checkforAce(card)
    if card.value = 1 #should be double == instead of =
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #typo on dif should be def, should be comma in between the two arguments
  if card1.value > card2.value # should be >= instead of >
    return card.name #name is not a method - should be value or suit
  else
    card2 #need to return card2.value
  end
end
end # too many ends 

def self.cards_total(cards)
  total #should assign something to the variable.
  for card in cards
    total += card.value
    return "You have a total of" + total # should use string interpolation here.
  end
end


```
