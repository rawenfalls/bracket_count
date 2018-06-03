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

def check_brackets(brackets)
  parenthesis=0
  square_brackets=0
  brace=0
  brackets.each do|bracket|
    if bracket == "("
      parenthesis+=1
    elsif bracket ==")"
      parenthesis-=1

    elsif bracket =="["
      square_brackets+=1
    elsif bracket =="]"
      square_brackets-=1
      
    elsif bracket =="{"
      brace+=1
    elsif bracket =="}"
      brace-=1
    end
  end
  if brace + parenthesis + square_brackets == 0
    puts "верное кол-во скобок"
  else
    puts "неверное кол-во скобок"
  end
  end