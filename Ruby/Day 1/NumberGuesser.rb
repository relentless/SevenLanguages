number = rand(10)
puts 'Guess a number between 1 and 10:'
guess = gets.to_i
while guess != number do
    puts 'Too High!' if guess > number
    puts 'Too Low!' if guess < number
    puts 'Guess again.'
    guess = gets.to_i
end
puts 'Right on, Bro-dog!'