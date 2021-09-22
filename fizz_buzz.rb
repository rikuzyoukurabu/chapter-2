def fizz_buzz(numbar)
  if numbar % 15 == 0
   "Fizz_buzz"
  elsif numbar % 3 == 0
    "Fizz"
  elsif numbar % 5 == 0
    "Buzz"
  elsif
    numbar.to_s
  end
end

puts "数字を入力してください"

input = gets.to_i

puts "結果は・・・"
puts fizz_buzz(input)