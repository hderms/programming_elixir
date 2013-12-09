defmodule MyStrings do
  def printable?([]), do: true
  def printable?([char | tail]) when char >= (? ) and char <= (?~) do
    true and printable?(tail)
  end
  def printable?([char | tail]), do: false

  def anagram(word1, word2)  do
    equal_length?(word1, word2) and equal_char_list?(word1, Enum.reverse(word2))

  end
  def equal_length?(word1, word2) do
    length(word1) == length(word2)
  end
  def equal_char_list?(char_list1, char_list2) do
    Enum.zip(char_list1, char_list2) |> Enum.all?(fn ({c1, c2}) -> c1 == c2 end)
  end
end
