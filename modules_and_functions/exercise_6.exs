defmodule Chop do

  def guess(actual, low..high) when actual > high do
    IO.puts "Ups the number is higher then the range"
  end

  def guess(actual, low..high) when actual < low do
    IO.puts "Ups the number is lower then the range"
  end

  def guess(actual, low..high) when actual == div(high+low, 2) do
    guessed = div(high+low, 2)
    IO.puts "YESSS it is #{guessed}"
  end

  def guess(actual, low..high) when actual > div(high+low, 2) do
    guessed = div(high+low, 2)
    IO.puts "Is it #{guessed}, no it is too large"
    guess(actual, guessed..high)
  end

  def guess(actual, low..high) when actual < div(high+low,2) do
    guessed = div(high+low, 2)
    IO.puts "Is it #{guessed}, no it is small"
    guess(actual, low..guessed)
  end


end
