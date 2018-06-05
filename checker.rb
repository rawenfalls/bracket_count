def scan
  expression = gets.chomp.strip.scan(/[\(){}\[\]]/)
  check_brackets(expression)
end

def check_answer
  quit = false
  until quit
    answer = gets.chomp.downcase
    yes_or_no = [["y", "yes", "д", "да"], ["n", "no", "н", "нет"]]
    if yes_or_no.assoc("y").include?(answer)
      quit = true
    elsif yes_or_no.assoc("n").include?(answer)
      abort
    else
      puts "некоректный ввод, попробуйте ещё раз"
    end
  end
end

def check_brackets(expression)
  parenthesis = 0
  expression.each do|bracket|
    if bracket == "("
      parenthesis+=1
    elsif bracket ==")"
      parenthesis-=1
    end
    return if bracket.to_i.negative?
  end
  if parenthesis == 0
    puts "верное кол-во скобок"
  else
    puts "неверное кол-во скобок"
  end
end