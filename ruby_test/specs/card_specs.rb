require_relative("../card.rb")
require_relative("../testing_task_2.rb")
require("minitest/autorun")

class TestCardGame < MiniTest::Test
  def setup()
    @card1 = Card.new("spades", 1)
    @card2 = Card.new("hearts", 2)
    @game1 = CardGame.new()

  end

  def test_check_for_ace__1_returns_true()
    assert_equal(true, @game1.checkforace(@card1))
  end

  def test_check_for_ace__2_returns_false()
    assert_equal(false, @game1.checkforace(@card2))
  end

  def test_highest_card()
    assert_equal(@card2, @game1.highest_card(@card1, @card2))
  end

  def test_cards_total()
    cards = [@card1, @card2]
    assert_equal("You have a total of 3", @game1.cards_total(cards))
  end

end
