current_path = "./" + File.dirname(__FILE__ )


require_relative 'test'
require_relative 'result_printer'

puts 'Пожалуйста, ответьте на следующие вопросы для прохождения теста на коммуникабельность'
puts 'Как Вас зовут?'
name = gets.chomp

test = Test.new(current_path + "/data/questions.txt")
test.run

final_result = ResultPrinter.new(name, current_path + "/data/answers.txt")
final_result.print_result(test.result)