defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "greets the world" do
    assert Cards.hello() == :world
  end

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end

  test "can create a map" do
    colors = %{primary: "red", secondary: "blue"}
    assert colors.primary == "red"
    assert colors.secondary == "blue"
  end

  test "can use pattern matching with map" do
    colors = %{primary: "red", secondary: "blue"}
    %{primary: primary_color, secondary: secondary_color} = colors
    assert primary_color == "red"
    assert secondary_color == "blue"
  end

  test "can use pattern matching with map (for a given key in the map)" do
    colors = %{primary: "red", secondary: "blue"}
    %{secondary: secondary_color} = colors
    assert secondary_color == "blue"
  end

  test "can use put method to add a new key in the map" do
    colors = %{primary: "red", secondary: "blue"}
    colors = Map.put(colors, :new_color, "pink")
    assert colors.primary == "red"
    assert colors.secondary == "blue"
    assert colors.new_color == "pink"
  end

  test "can use put method to modify a value in the map" do
    colors = %{primary: "red", secondary: "blue"}
    colors = Map.put(colors, :secondary, "pink")
    assert colors.primary == "red"
    assert colors.secondary == "pink"
  end

  test "can use pipe operator to modify a value in the map" do
    colors = %{primary: "red", secondary: "blue"}
    colors = %{colors | secondary: "yellow"}
    assert colors.primary == "red"
    assert colors.secondary == "yellow"
  end
end
