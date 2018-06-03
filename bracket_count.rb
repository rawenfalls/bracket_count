=begin
программа для подсчета скобок
=end

require "./checker.rb"

loop do
  puts "Введите выражение"
  brackets = gets.chomp.strip.scan(/[\(){}\[\]]/)
  check_brackets(brackets)
  puts "если хотите проверить скобки в новом выражении, введите y, yes, д, да, если хотите закончить программу введите n, no, н, нет"
  check_answer
end